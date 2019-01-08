package com.niyaou.fileupload;

import java.io.BufferedInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import org.apache.commons.lang.StringUtils;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FSDataOutputStream;
import org.apache.hadoop.fs.FileStatus;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.FileUtil;
import org.apache.hadoop.fs.LocatedFileStatus;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.fs.RemoteIterator;
import org.apache.hadoop.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * hdfs的工具类。
 * 
 * @author pengdengfu
 */
public class HdfsUtils {
    private Logger log = LoggerFactory.getLogger(this.getClass());
    public static final String TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";
    private Configuration conf = new Configuration();
    private FileSystem fs = null;

    /**
     * 获取FileSystem
     * 
     * @return
     * @throws IOException
     * @throws InterruptedException
     * @throws URISyntaxException
     */
    public FileSystem getFileSystem() {
	if (fs == null) {
	    synchronized (this) {
		if (fs == null) {

		    try {
			Properties properties = new Properties();
			properties.load(ClassLoader.getSystemResourceAsStream("hdfs.propertites"));

			conf.set("fs.defaultFS", properties.getProperty("fs.defaultFS"));
			conf.setBoolean("dfs.support.append", true);
			conf.set("dfs.client.block.write.replace-datanode-on-failure.policy", "NEVER");
			conf.set("dfs.client.block.write.replace-datanode-on-failure.enable", "true");
			String uri=properties.getProperty("fs.defaultFS");
			String user=properties.getProperty("dfs.user");
			return FileSystem.get(new URI(uri), conf,user);
		    } catch (IOException | InterruptedException | URISyntaxException e) {
			e.printStackTrace();
		    }
		}
	    }
	}

	return fs;
    }

    public Configuration getConf() {
	return conf;
    }

    public void closeFileSystem() {
	if (fs != null) {
	    synchronized (this) {
		if (fs != null) {
		    try {
			fs.close();
		    } catch (IOException e) {
			e.printStackTrace();
		    }
		}
	    }
	}

    }

    /**
     * 将本地文件上传到hdfs（覆盖已经存在的文件）
     * 
     * @param inputStream
     * @param hdfsFileName
     */
    public void uploadFile(BufferedInputStream  inputStream, String hdfsFileName) {
	try {
	    fs = getFileSystem();
	    Path hdfsPath=new Path(hdfsFileName);
	    FSDataOutputStream outputStream = fs.create(hdfsPath, true);
	    IOUtils.copyBytes(inputStream, outputStream, 4096, false);
	} catch (IOException e) {
	    e.printStackTrace();
	} finally {
	    IOUtils.closeStream(inputStream); 
	    closeFileSystem();
	}

    }

    
    /**
     * 合并hdfs文件
     * @param folder
     * @param file
     */
    public void mergeFile(String srcDir, String dstFile) {
    	fs = getFileSystem();
    	 Path src = new Path(srcDir);
         Path dst = new Path(dstFile);
         log.info(src+"     ||    "+dst);
         try {
//        	 
//        	 dstFile = checkDest(srcDir.getName(), dstFS, dstFile, false);
//
//        	    if (!srcFS.getFileStatus(srcDir).isDirectory())
//        	      return false;
//        	   
//        	    OutputStream out = dstFS.create(dstFile);
//        	    
//        	    try {
//        	      FileStatus contents[] = srcFS.listStatus(srcDir);
//        	      Arrays.sort(contents);
//        	      for (int i = 0; i < contents.length; i++) {
//        	        if (contents[i].isFile()) {
//        	          InputStream in = srcFS.open(contents[i].getPath());
//        	          try {
//        	            IOUtils.copyBytes(in, out, conf, false);
//        	            if (addString!=null)
//        	              out.write(addString.getBytes("UTF-8"));
//        	                
//        	          } finally {
//        	            in.close();
//        	          } 
//        	        }
//        	      }
//        	    } finally {
//        	      out.close();
//        	    }
//        	    
//
////        	    if (deleteSource) {
//        	    srcFS.delete(srcDir, true);
////        	    } else {
////        	      return true;
////        	    }
        	 
        	 
             FileUtil.copyMerge(fs, src,
                     fs, dst, true, conf, null);
             log.info("merge====done====");
         } catch (IOException e) {
             e.printStackTrace();
         }
    }
    
    public void explorePath(String folder ) {
    	fs = getFileSystem();
    	 Path src = new Path(folder);
    	 try {
			log.info(fs.exists(src)+"");
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
    	    try {
				FileStatus contents[]= fs.listStatus(src);
			    Arrays.sort(contents);
			    for (FileStatus fileStatus : contents) {
			    	 log.info(fileStatus.toString());
				}
			   
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	 
    }
    
    /**
     * 从hdfs下载，返回文件流
     * 
     * @param hdfsFilename
     * @return
     */
    public InputStream downloadFile(String hdfsFilename) {
	Path hdfsPath = new Path(hdfsFilename);
	InputStream fsDataInputStream = null;
	try {
	    fs = getFileSystem();

	    System.out.println(fs.exists(hdfsPath));
	    fsDataInputStream = fs.open(hdfsPath);
	} catch (IOException e) {
	    e.printStackTrace();
	}
	return fsDataInputStream;
    }

    /**
     * 在hdfs上创建目录。 会创建不存在的目录，相当于mkdir -p
     * 
     * @param path
     */
    public void mkdir(String path) {
	try {
	    fs = getFileSystem();
	    fs.mkdirs(new Path(path));
	} catch (IOException e) {
	    e.printStackTrace();
	}

    }

    /**
     * 移动文件或者文件夹
     * 
     * @param src
     *            初始路径
     * @param dst
     *            移动结束路径
     * @throws Exception
     */
    public void moveFile(String src, String dst) {
	fs = getFileSystem();
	Path p1 = new Path(src);
	Path p2 = new Path(dst);
	try {
	    fs.rename(p1, p2);
	} catch (IOException e) {
	    e.printStackTrace();
	}
    }

    /**
     * 检查文件或者文件夹是否存在
     * 
     * @param filename
     * @return
     */
    public boolean checkFileExist(String filename) {
	try {
	    fs = getFileSystem();
	    Path f = new Path(filename);
	    return fs.exists(f);
	} catch (Exception e) {
	    e.printStackTrace();
	}
	return false;
    }

    /**
     * 复制hdfs文件到指定目录
     * 
     * @param srcfile
     *            复制的文件路径
     * @param desfile
     *            粘贴的路径
     * @param deleteSource
     *            是否删除原始文件
     * @return
     */
    public boolean copyHdfsFile(String srcfile, String desfile, boolean deleteSource) {
	fs = getFileSystem();
	Path src = new Path(srcfile);
	Path dst = new Path(desfile);
	try {
	    FileUtil.copy(fs, src, fs, dst, deleteSource, conf);
	} catch (IOException e) {
	    return false;
	}
	return true;
    }

    /**
     * list files/directories/links names under a directory, not include embed
     * objects
     * 
     * @param dir
     *            a folder path may like '/tmp/testdir'
     * @return List<String> list of file names
     * @throws IOException
     *             file io exception
     */
    public List<String> listAll(String dir) throws IOException {
	if (StringUtils.isBlank(dir)) {
	    return new ArrayList<String>();
	}

	fs = getFileSystem();
	FileStatus[] stats = fs.listStatus(new Path(dir));
	List<String> names = new ArrayList<String>();
	for (int i = 0; i < stats.length; ++i) {
	    if (stats[i].isFile()) {
		// regular file
		names.add(stats[i].getPath().toString());
	    } else if (stats[i].isDirectory()) {
		// dir
		names.add(stats[i].getPath().toString());
	    } else if (stats[i].isSymlink()) {
		// is s symlink in linux
		names.add(stats[i].getPath().toString());
	    }
	}
	return names;
    }

    /**
     * 把byte转换为字符串，包含Mb，GB等
     * 
     * @param size
     * @return
     */
    private static String convertFileSize(long size) {
	if (size == 0) {
	    return "";
	}
	long kb = 1024;
	long mb = kb * 1024;
	long gb = mb * 1024;

	if (size >= gb) {
	    {
		return String.format("%.1f GB", (float) size / gb);
	    }
	} else if (size >= mb) {
	    float f = (float) size / mb;
	    return String.format(f > 100 ? "%.0f MB" : "%.1f MB", f);
	} else if (size >= kb) {
	    float f = (float) size / kb;
	    return String.format(f > 100 ? "%.0f KB" : "%.1f KB", f);
	} else {
	    return String.format("%d B", size);
	}
    }

    /**
     * 将长整型数字转换为日期格式的字符串
     * 
     * @param time
     * @param format
     * @return
     */
    public static String convert2String(long time, String format) {
	if (time > 0L) {
	    if (StringUtils.isBlank(format)) {
		format = TIME_FORMAT;
	    }
	    SimpleDateFormat sf = new SimpleDateFormat(format);
	    Date date = new Date(time);
	    return sf.format(date);
	}
	return "";
    }

    /**
     * HDFS文件格式转换为目标格式
     * 
     * @param file
     * @return
     */
    public HdfsResponseProperties getDataFromLocatedFileStatus(FileStatus file) {
	HdfsResponseProperties properties = new HdfsResponseProperties();
	properties.setName(file.getPath().getName());
	properties.setBlockSize(convertFileSize(file.getBlockSize()));
	properties.setGroup(file.getGroup());
	properties.setModificationTime(convert2String(file.getModificationTime(), null));
	properties.setOwner(file.getOwner());
	properties.setPermission(file.getPermission().toString());
	properties.setReplication(file.getReplication() > 0 ? String.valueOf(file.getReplication()) : "");
	properties.setSize(convertFileSize(file.getLen()));
	properties.setType(file.isDirectory() ? "dir" : "file");
	return properties;

    }

    /**
     * 列出指定文件夹下的文件,默认不对子文件夹
     * 
     * @param folder
     * @param isSubFolder
     *            是否需要子文件夾
     * @return
     */
    public List<HdfsResponseProperties> listFolder(String folder, boolean isSubFolder) {
	List<HdfsResponseProperties> files = new ArrayList<>();
	fs = getFileSystem();
	FileStatus[] filesStatus;
	try {
	    filesStatus = fs.listStatus(new Path(folder));
	    // 递归设置为flase，不需要对子文件夹再次递归
	    RemoteIterator<LocatedFileStatus> children = fs.listFiles(new Path(folder), isSubFolder);
	    // 需返回文件的属性？
	    while (children.hasNext()) {
		files.add(getDataFromLocatedFileStatus(children.next()));
	    }

	    for (FileStatus file : filesStatus) {
		files.add(getDataFromLocatedFileStatus(file));
	    }
	} catch (IllegalArgumentException | IOException e) {
	    e.printStackTrace();
	}
	return files;
    }

    /**
     * 检查名字与给定名字是否符合op关系
     * 
     * @param fileName
     * @param name
     * @param op
     *            no,不用检查;contains,是否包含,包含返回true;equals,是否相等;noequal,是否不相等
     * @return
     */
    private boolean checkName(String fileName, String name, String op) {
	switch (op) {
	// 不用检查
	case "no":
	    return true;
	// 是否包含,包含返回true
	case "contains":
	    return fileName.contains(name) ? true : false;
	// 是否相等,相等返回true
	case "equals":
	    return fileName.equals(name) ? true : false;
	// 是否不相等,不相等返回true
	case "noequal":
	    return fileName.equals(name) ? false : true;

	default:
	    log.info("wrong op:{}", op);
	    break;
	}
	return false;
    }

    /**
     * 搜索文件夹下的文件
     * 
     * @param folder
     * @param name
     *            文件名
     * @param nameOp
     *            no,不用检查;contains,是否包含,包含返回true;equals,是否相等;noequal,是否不相等
     * @param owner
     *            文件拥有者
     * @param ownerOp
     *            no,不用检查;contains,是否包含,包含返回true;equals,是否相等;noequal,是否不相等
     * @return
     */
    public List<HdfsResponseProperties> searchFolder(String folder, String name, String nameOp, String owner,
            String ownerOp) {
	List<HdfsResponseProperties> files = new ArrayList<>();
	fs = getFileSystem();
	FileStatus[] filesStatus;
	try {
	    filesStatus = fs.listStatus(new Path(folder));
	    for (FileStatus file : filesStatus) {
		if (!checkName(file.getPath().getName(), name, nameOp)) {
		    // 名字没有检查通过，则下一个
		    continue;
		}
		if (!checkName(file.getOwner(), owner, ownerOp)) {
		    // owner没有检查通过，则下一个
		    continue;
		}
		files.add(getDataFromLocatedFileStatus(file));
	    }
	} catch (IllegalArgumentException | IOException e) {
	    e.printStackTrace();
	}
	return files;
    }

    /**
     * 检查用户是否对hdfs 目录folder 有读权限 规则： 判断是否和档案拥有者同名，同名直接返回true； 不同名，直接归为其他用户
     * 
     * @param folder
     * @param hdfsUserName
     * @param permission
     * @return
     */
    public boolean checkHdfsAuth(String folder, String hdfsUserName, String permission) {
	fs = getFileSystem();
	FileStatus fileStatus;
	try {
	    fileStatus = fs.getFileStatus(new Path(folder));
	    if (fileStatus.getOwner().equals(hdfsUserName)) {
		return true;
	    }
	    log.info("userAction:{},groupAction:{},otherAction:{}",
	            new Object[] { fileStatus.getPermission().getUserAction().SYMBOL,
	                    fileStatus.getPermission().getGroupAction().SYMBOL,
	                    fileStatus.getPermission().getOtherAction().SYMBOL });
	    if (fileStatus.getPermission().getOtherAction().SYMBOL.contains(permission)) {
		return true;
	    }
	} catch (IllegalArgumentException | IOException e) {
	    e.printStackTrace();
	}

	return false;
    }

    /**
     * 获取hdfs文件的文件大小
     * 
     * @param hdfsPath
     * @return
     */
    public long getHdfsFileLength(String hdfsPath) {
	long fileLength = 0;
	fs = getFileSystem();
	try {
	    FileStatus fileStatus = fs.getFileStatus(new Path(hdfsPath));
	    fileLength = fileStatus.getLen();
	} catch (IllegalArgumentException | IOException e) {
	    e.printStackTrace();
	}
	return fileLength;
    }
    


}
