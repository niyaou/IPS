package com.niyaou.fileupload;

import com.alibaba.fastjson.JSON;


import com.alibaba.fastjson.JSONObject;
import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

import java.util.*;
import java.util.concurrent.*;


@Controller
public class HelloController {

    @RequestMapping(value = "/")
    @ResponseBody
    public String hello() {
        return "hello,Spring Boot";
    }

    @RequestMapping(value = "/hello")
    public String hello1(ModelMap ModelMap) {
        return "hello";
    }

    @RequestMapping(value = "/index")
    public String index(HttpServletRequest request, HttpServletResponse response, ModelMap ModelMap) {

        return "index";
    }

    ThreadPoolExecutor execute = new ThreadPoolExecutor(6, 10,
            10L, TimeUnit.SECONDS,
            new LinkedBlockingQueue<Runnable>());


    private Logger logger = LoggerFactory.getLogger(this.getClass());

    /**
     * 上传文件
     **/
    @RequestMapping(value = "/fileuploadBroken", method = RequestMethod.POST)
    public void uploadFileBroken(MultipartHttpServletRequest request, HttpServletResponse response, ModelMap model) {
        Map<String, Object> result = new HashMap<>();
        String market = request.getParameter("market");
        String chunk = request.getParameter("chunk");
        String chunks = request.getParameter("chunks");
        String name = request.getParameter("name");
        JSONObject obj = new JSONObject();
        obj.put("chunk", chunk);
        obj.put("chunks", chunks);
        obj.put("name", name);
        try {
            Iterator<String> names = request.getFileNames();
            while (names.hasNext()) {
                String fileName = names.next();
                MultipartFile part = request.getFile(fileName);
                int size = (int) part.getSize();
//                byte[] copy=new byte[1024*1024*2];
//                IOUtils.read(part.getInputStream(),copy);

                byte[] copy = IOUtils.toByteArray(part.getInputStream());

                part.getInputStream().close();
                writeToFile(copy, null, size, FileUtil.currentWorkDir, (name + chunk + "_chuck.part"), obj.toJSONString());


//                Future f = execute.submit(writeFileSyn(copy, null, size, FileUtil.currentWorkDir, (name + chunk + "_chuck.part"), obj.toJSONString()));
                copy = null;


                result.put("write", (name + chunk + "_chuck.part"));
                String data = JSON.toJSONString(result);
                request.getInputStream().close();
                writeResponse(response, data);
//                logger.info( ""+((LinkedBlockingQueue)execute.getQueue()).size());

//                String write = (String) f.get();
//                if (execute.getActiveCount() == 0) {
                if (Integer.parseInt(request.getParameter("chunks"))-Integer.parseInt(request.getParameter("chunk"))==1) {
                    logger.info("合并文件");
                    FileUtil utils = new FileUtil();
                    int blockFileSize = 1024 * 1024 * 1;
                    utils.mergePartFiles(FileUtil.currentWorkDir, ".part", blockFileSize, FileUtil.currentWorkDir + name);
                }
            }


        } catch (IOException e) {
            e.printStackTrace();
        }
//        catch (InterruptedException e) {
//            e.printStackTrace();
//        } catch (ExecutionException e) {
//            e.printStackTrace();
//        }
    }

    public void writeResponse(HttpServletResponse response, String data) {

        OutputStream outputStream = null;//获取OutputStream输出流
        response.setHeader("content-type", "text/html;charset=UTF-8");//通过设置响应头控制浏览器以UTF-8的编码显示数据，如果不加这句话，那么浏览器显示的将是乱码
        try {
            outputStream = response.getOutputStream();
            byte[] dataByteArr = new byte[0];//将字符转换成字节数组，指定以UTF-8编码进行转换
            dataByteArr = data.getBytes("UTF-8");
            outputStream.write(dataByteArr);//使用OutputStream流向客户端输出字节数组
        } catch (IOException e) {
            e.printStackTrace();
        }

        /**
         37          * data.getBytes()是一个将字符转换成字节数组的过程，这个过程中一定会去查码表，
         38          * 如果是中文的操作系统环境，默认就是查找查GB2312的码表，
         39          * 将字符转换成字节数组的过程就是将中文字符转换成GB2312的码表上对应的数字
         40          * 比如： "中"在GB2312的码表上对应的数字是98
         41          *         "国"在GB2312的码表上对应的数字是99
         42          */
        /**
         44          * getBytes()方法如果不带参数，那么就会根据操作系统的语言环境来选择转换码表，如果是中文操作系统，那么就使用GB2312的码表
         45          */

    }

    private String writeToFile(byte[] copy, InputStream iStream, int size, String savePath, String fileName, String json) {
        logger.info("断点续传发送数据--------" + json);
        File fileDir = new File(savePath);
        if (!fileDir.exists()) {
            fileDir.mkdirs();
        }
        File file = new File(savePath + File.separator + fileName);
        if (!file.exists()) {
            try {
                boolean r = file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        FileOutputStream out;
        try {
            out = new FileOutputStream(file);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        }

        try {
            out.write(copy);
            out.close();
        } catch (Exception e) {
            logger.debug(e.getMessage());
        }
        return savePath + fileName;
    }


    private Callable writeFileSyn(byte[] copy,InputStream iStream,int size, String savePath, String fileName,String json) {
        return new Callable() {
            @Override
            public String call() throws Exception {
                return writeToFile(copy, iStream, size, savePath, fileName, json);
            }
        };

    }

}
