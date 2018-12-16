package com.niyaou.fileupload;

import java.io.*;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/**
 * 文件处理辅助类
 * 
 * @author uidq1343
 *
 */
public class FileUtil {

    /**
     * 当前目录路径
     */
    public static String currentWorkDir = System.getProperty("user.dir") + "\\";

    /**
     * 左填充
     * 
     * @param str
     * @param length
     * @param ch
     * @return
     */
    public static String leftPad(String str, int length, char ch) {
        if (str.length() >= length) {
            return str;
        }
        char[] chs = new char[length];
        Arrays.fill(chs, ch);
        char[] src = str.toCharArray();
        System.arraycopy(src, 0, chs, length - src.length, src.length);
        return new String(chs);

    }

    /**
     * 删除文件
     * 
     * @param fileName
     *            待删除的完整文件名
     * @return
     */
    public static boolean delete(String fileName) {
        boolean result = false;
        File f = new File(fileName);
        if (f.exists()) {
            result = f.delete();

        } else {
            result = true;
        }
        return result;
    }

    /***
     * 递归获取指定目录下的所有的文件（不包括文件夹）
     * 
     * @param
     * @return
     */
    public static ArrayList<File> getAllFiles(String dirPath) {
        File dir = new File(dirPath);

        ArrayList<File> files = new ArrayList<File>();

        if (dir.isDirectory()) {
            File[] fileArr = dir.listFiles();
            for (int i = 0; i < fileArr.length; i++) {
                File f = fileArr[i];
                if (f.isFile()) {
                    files.add(f);
                } else {
                    files.addAll(getAllFiles(f.getPath()));
                }
            }
        }
        return files;
    }

    /**
     * 获取指定目录下的所有文件(不包括子文件夹)
     * 
     * @param dirPath
     * @return
     */
    public static ArrayList<File> getDirFiles(String dirPath) {
        File path = new File(dirPath);
        File[] fileArr = path.listFiles();
        ArrayList<File> files = new ArrayList<File>();

        for (File f : fileArr) {
            if (f.isFile()) {
                files.add(f);
            }
        }
        return files;
    }

    /**
     * 获取指定目录下特定文件后缀名的文件列表(不包括子文件夹)
     * 
     * @param dirPath
     *            目录路径
     * @param suffix
     *            文件后缀
     * @return
     */
    public static ArrayList<File> getDirFiles(String dirPath,
            final String suffix) {
        File path = new File(dirPath);
        File[] fileArr = path.listFiles(new FilenameFilter() {
            public boolean accept(File dir, String name) {
                String lowerName = name.toLowerCase();
                String lowerSuffix = suffix.toLowerCase();
                if (lowerName.endsWith(lowerSuffix)) {
                    return true;
                }
                return false;
            }

        });
        ArrayList<File> files = new ArrayList<File>();

        for (File f : fileArr) {
            if (f.isFile()) {
                files.add(f);
            }
        }
        return files;
    }

    /**
     * 读取文件内容
     * 
     * @param fileName
     *            待读取的完整文件名
     * @return 文件内容
     * @throws IOException
     */
    public static String read(String fileName) throws IOException {
        File f = new File(fileName);
        FileInputStream fs = new FileInputStream(f);
        String result = null;
        byte[] b = new byte[fs.available()];
        fs.read(b);
        fs.close();
        result = new String(b);
        return result;
    }

    /**
     * 写文件
     * 
     * @param fileName
     *            目标文件名
     * @param fileContent
     *            写入的内容
     * @return
     * @throws IOException
     */
    public static boolean write(String fileName, String fileContent)
            throws IOException {
        boolean result = false;
        File f = new File(fileName);
        FileOutputStream fs = new FileOutputStream(f);
        byte[] b = fileContent.getBytes();
        fs.write(b);
        fs.flush();
        fs.close();
        result = true;
        return result;
    }

    /**
     * 追加内容到指定文件
     * 
     * @param fileName
     * @param fileContent
     * @return
     * @throws IOException
     */
    public static boolean append(String fileName, String fileContent)
            throws IOException {
        boolean result = false;
        File f = new File(fileName);
        if (f.exists()) {
            RandomAccessFile rFile = new RandomAccessFile(f, "rw");
            byte[] b = fileContent.getBytes();
            long originLen = f.length();
            rFile.setLength(originLen + b.length);
            rFile.seek(originLen);
            rFile.write(b);
            rFile.close();
        }
        result = true;
        return result;
    }

    /**
     * 拆分文件
     * 
     * @param fileName
     *            待拆分的完整文件名
     * @param byteSize
     *            按多少字节大小拆分
     * @return 拆分后的文件名列表
     * @throws IOException
     */
    public List<String> splitBySize(String fileName, int byteSize)
            throws IOException {
        List<String> parts = new ArrayList<String>();
        File file = new File(fileName);
        int count = (int) Math.ceil(file.length() / (double) byteSize);
        int countLen = (count + "").length();
        ThreadPoolExecutor threadPool = new ThreadPoolExecutor(count,
                count * 3, 1, TimeUnit.SECONDS,
                new ArrayBlockingQueue<Runnable>(count * 2));

        for (int i = 0; i < count; i++) {
            String partFileName = file.getName() + "."
                    + leftPad((i + 1) + "", countLen, '0') + ".part";
            threadPool.execute(new SplitRunnable(byteSize, i * byteSize,
                    partFileName, file));
            parts.add(partFileName);
        }
        return parts;
    }

    /**
     * 合并文件
     * 
     * @param dirPath
     *            拆分文件所在目录名
     * @param partFileSuffix
     *            拆分文件后缀名
     * @param partFileSize
     *            拆分文件的字节数大小
     * @param mergeFileName
     *            合并后的文件名
     * @throws IOException
     */
    public void mergePartFiles(String dirPath, String partFileSuffix,
            int partFileSize, String mergeFileName) throws IOException {
        ArrayList<File> partFiles = FileUtil.getDirFiles(dirPath,
                partFileSuffix);
        Collections.sort(partFiles, new FileComparator());
//
//        RandomAccessFile randomAccessFile = new RandomAccessFile(mergeFileName,
//                "rw");
//        randomAccessFile.setLength(partFileSize * (partFiles.size() - 1)
//                + partFiles.get(partFiles.size() - 1).length());
//        randomAccessFile.close();
//
//        ThreadPoolExecutor threadPool = new ThreadPoolExecutor(
//                partFiles.size(), partFiles.size() * 3, 1, TimeUnit.SECONDS,
//                new ArrayBlockingQueue<Runnable>(partFiles.size() * 2));
//
//        for (int i = 0; i < partFiles.size(); i++) {
//            threadPool.execute(new MergeRunnable(i * partFileSize,
//                    mergeFileName, partFiles.get(i)));
//        }


        //            FileUtil f=new FileUtil();
//            ArrayList<File> partFiles = FileUtil.getDirFiles(FileUtil.currentWorkDir+"temp\\", ".part");
//            Collections.sort(partFiles, new FileComparator());
            mergerNIO(partFiles,FileUtil.currentWorkDir+"temp\\",mergeFileName);

    }

    /**
     * 根据文件名，比较文件
     * 
     * @author yjmyzz@126.com
     *
     */
    private  class FileComparator implements Comparator<File> {
        public int compare(File o1, File o2) {

            System.out.print( o1.getName().split("\\.")[0]);
        String [] oo1=o1.getName().split("\\.");
       String [] oo2=o2.getName().split("\\.");
            return Integer.valueOf(oo1[oo1.length-2]).compareTo(Integer.valueOf(oo2[oo2.length-2]));
        }
    }




    /**
     * 分割处理Runnable
     * 
     * @author yjmyzz@126.com
     *
     */
    private class SplitRunnable implements Runnable {
        int byteSize;
        String partFileName;
        File originFile;
        int startPos;

        public SplitRunnable(int byteSize, int startPos, String partFileName,
                File originFile) {
            this.startPos = startPos;
            this.byteSize = byteSize;
            this.partFileName = partFileName;
            this.originFile = originFile;
        }

        public void run() {
            RandomAccessFile rFile;
            OutputStream os;
            try {
                rFile = new RandomAccessFile(originFile, "r");
                byte[] b = new byte[byteSize];
                rFile.seek(startPos);// 移动指针到每“段”开头
                int s = rFile.read(b);
                os = new FileOutputStream(partFileName);
                os.write(b, 0, s);
                os.flush();
                os.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 合并处理Runnable
     * 
     * @author yjmyzz@126.com
     *
     */
    private class MergeRunnable implements Runnable {
        long startPos;
        String mergeFileName;
        File partFile;

        public MergeRunnable(long startPos, String mergeFileName, File partFile) {
            this.startPos = startPos;
            this.mergeFileName = mergeFileName;
            this.partFile = partFile;
        }

        public void run() {
            RandomAccessFile rFile;
            try {
                rFile = new RandomAccessFile(mergeFileName, "rw");
                rFile.seek(startPos);
                FileInputStream fs = new FileInputStream(partFile);
                byte[] b = new byte[fs.available()];
                fs.read(b);
                fs.close();
                rFile.write(b);
                rFile.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }




    public static void mergerNIO( List<File> files,String filepath,String fileName) {

        SimpleDateFormat fd = new SimpleDateFormat("yyyyMMddHHmmss");

        File fout = new File(fileName);
        System.out.print(files.size());
        try {
            @SuppressWarnings("resource")
            FileChannel mFileChannel = new FileOutputStream(fout).getChannel();
            FileChannel inFileChannel;
            System.out.print(files.size());

                    for (File fin : files) {
                        System.out.print(fin.getName()+"     end with:"+fileName+"\n");
                            inFileChannel = new FileInputStream(fin)
                                    .getChannel();
                            ByteBuffer bufferArray =  ByteBuffer.allocate(1024*1024*20);
                            inFileChannel.read(bufferArray);
                            bufferArray.flip();
                           mFileChannel.write(bufferArray);
                           bufferArray.clear();
                            inFileChannel.close();
                            fin.delete();
            }
            mFileChannel.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    /**
     * 获取当前路径下的所有文件中
     *
     * @time 2014年8月25日
     * @auther yuxu.feng
     * @param filepath
     * @return
     */
//    private static List<File> getFiles(String filepath) {
//        File file = new File(filepath);
//        if (!file.exists() | file.listFiles(new MyFileFileter()) == null)
//            return null;
//        List<File> fileList = Arrays
//                .asList(file.listFiles(new MyFileFileter()));
//        // 最好在这里把 文件过滤掉 只获取文件夹
//        return sortFolder(fileList);
//    }

    /**
     * 按照文件夹按照文件名进行升序 或按着文件名的名字进行升序
     *
     * @time 2014年8月25日
     * @auther yuxu.feng
     * @param files
     * @return
     */
    private static List<File> sortFolder(List<File> files) {
        if (files.size() == 0)
            return null;
        Collections.sort(files, new Comparator<File>() {
            @Override
            public int compare(File o1, File o2) {
                if (o1.isDirectory() && o2.isFile())
                    return -1;
                if (o1.isFile() && o2.isDirectory())
                    return 1;
                if (o1.isDirectory() && o2.isDirectory())
                    return sortFolderName(o1.getName(), o2.getName());
                else
                    return 0;
            }
        });
        return files;
    }

    /**
     * 根据文件夹名称排序
     *
     * @time 2014年8月25日
     * @auther yuxu.feng
     * @param startName
     * @param endName
     * @return
     */
    private static int sortFolderName(String startName, String endName) {
        if ((parseFloderName(startName) - parseFloderName(endName)) >= 0)
            return 1;
        else
            return -1;
    }

    /**
     * 将文件夹的名字(格式为 A.B.C.D) 转换为long型的数字
     *
     * @time 2014年8月25日
     * @auther yuxu.feng
     * @param floderName
     * @return
     */
    private static long parseFloderName(String floderName) {
        Scanner sc = new Scanner(floderName).useDelimiter("\\.");
        return (sc.nextLong() << 24) + (sc.nextLong() << 16)
                + (sc.nextLong() << 8) + (sc.nextLong());
    }


//        public static void main(String[] args) {
////       System.out.print( currentWorkDir+"temp\\");
////          String a=  "eclipse-jee-mars-1-win32-x86_64.zip_chuck.10.part";
////          String[] aa=a.split("\\.");
////            for (String d :aa
////                 ) {
////                System.out.print( d+"\n");
////            }
//
//            FileUtil f=new FileUtil();
//            ArrayList<File> partFiles = FileUtil.getDirFiles(FileUtil.currentWorkDir+"temp\\", ".part");
//            Collections.sort(partFiles, new FileComparator());
//            mergerNIO(partFiles,FileUtil.currentWorkDir+"temp\\","mergeFile.zip");
//    }


}