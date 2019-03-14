package com.niyaou.fileupload;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;


@Controller
public class HelloController {
  private String longitude;
  private String latitude;
  private String HDFSDIR = "/test/upload/";
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
    
    @RequestMapping(value = "/upload")
    public String upload(HttpServletRequest request, HttpServletResponse response, ModelMap ModelMap) {
     return "upload";
    }

    @RequestMapping(value = "/parking")
    public String parking(HttpServletRequest request, HttpServletResponse response, ModelMap ModelMap) {
        return "parking";
    }

    @RequestMapping(value = "/location")
    @ResponseBody
    public String location(HttpServletRequest request, HttpServletResponse response) {
        JSONObject locate=new JSONObject();
        locate.put("x",longitude);
        locate.put("y",latitude);
        locate.put("flag",getParkingReady(locate));
        return locate.toJSONString();
    }


    @RequestMapping(value = "/ajax/{a}/{b}",method = RequestMethod.POST)
    @ResponseBody
    public String ajax(@PathVariable String a,@PathVariable String b) {
//        logger.info("x:"+a+"   y:"+b);
        return a;
    }

    @RequestMapping(value = "/parking/{x}/{y}",method = RequestMethod.POST)
    @ResponseBody
    public String parkingLocation(@PathVariable String x,@PathVariable String y) {
        logger.info("x:"+x+"   y:"+y);
        longitude=x;
        latitude=y;
        return "x:"+x+"   y:"+y;
    }

    @RequestMapping(value = "/servicestatus",method = RequestMethod.GET)
    @ResponseBody
    public String getServiceStatus() {
        String host = null;
        try {
            host = InetAddress.getLocalHost().getHostAddress();
        } catch (UnknownHostException e) {
           e.printStackTrace();
        }
        logger.info("    ip:"+host);
        return host;
    }

    @RequestMapping(value = "/servicestatus1",method = RequestMethod.GET)
    @ResponseBody
    public String getServiceStatus1() {

        try {
            String host = null;
            host = InetAddress.getLocalHost().getHostAddress();
            logger.info("1111111 ip:"+host);
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }

        return "333333333";
    }


    
    
    @RequestMapping(value = "/demo",method = RequestMethod.GET)
    @ResponseBody
    public String clickDemo() {
    	HdfsUtils u = new HdfsUtils();
    	u.explorePath("/test/upload/hadoop-2.7.3.7z.downloadTest.zip");
        return "demo";
    }
    


    ThreadPoolExecutor execute = new ThreadPoolExecutor(6, 10,
            10L, TimeUnit.SECONDS,
            new LinkedBlockingQueue<Runnable>());


    private Logger logger = LoggerFactory.getLogger(this.getClass());




    /**
     * 上传文件1
     **/
    @RequestMapping(value = "/fileuploadBrokenSync", method = RequestMethod.POST)
    public void uploadFileBrokenSync(MultipartHttpServletRequest request, HttpServletResponse response, ModelMap model) {
        Map<String, Object> result1 = new HashMap<>();
        String market = request.getParameter("market");
        String name = request.getParameter("name");
        String chunk = request.getParameter("chunk");



        JSONObject obj = new JSONObject();
        obj.put("chunk", chunk);
        String chunks = request.getParameter("chunks");
        obj.put("chunks", chunks);
        obj.put("name", name);
        try {
            Iterator<String> names = request.getFileNames();
            while (names.hasNext()) {
                String fileName = names.next();

                MultipartFile part = request.getFile(fileName);
//                                byte[] copy=new byte[1024*1024*2];
//                IOUtils.read(part.getInputStream(),copy);
                byte[] copy = IOUtils.toByteArray(part.getInputStream());
                int size = (int) part.getSize();




                part.getInputStream().close();
//                writeToFile(copy, null, size, FileUtil.currentWorkDir+"temp\\", (name + chunk + "_chuck.part"), obj.toJSONString());


                Future f = execute.submit(writeFileSyn(copy, null, size, FileUtil.currentWorkDir+"temp\\", (name + chunk + "_chuck.part"), obj.toJSONString()));
                copy = null;


                result1.put("write", (name + chunk + "_chuck.part"));
                String data = JSON.toJSONString(result1);
                request.getInputStream().close();
                writeResponse(response, data);
//                logger.info( ""+((LinkedBlockingQueue)execute.getQueue()).size());

                String write = (String) f.get();
//                if (execute.getActiveCount() == 0) {
                if (Integer.parseInt(request.getParameter("chunks"))-Integer.parseInt(request.getParameter("chunk"))==1) {
                    logger.info("合并文件1");
                    FileUtil utils = new FileUtil();
                    int blockFileSize = 1024 * 1024 * 1;
//                    utils.mergePartFiles(FileUtil.currentWorkDir+"temp\\", ".part", blockFileSize, FileUtil.currentWorkDir + name);
                }
            }


        } catch (IOException e) {
            e.printStackTrace();
        }
        catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e) {
            e.printStackTrace();
        }
    }



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
                
                writeToHdfs(part.getInputStream(),name,(name +"."+ String.format("%06d", Integer.parseInt(chunk)) + "_chuck.part"),"","","","",size);
                
                request.getInputStream().close();
                if (Integer.parseInt(request.getParameter("chunks"))-Integer.parseInt(request.getParameter("chunk"))==1) {
                    logger.info("合并文件");
                    mergeHDFSFile(HDFSDIR+name+".tmp",HDFSDIR+ name);
                }
            }


        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void mergeHDFSFile(String path,String File) {
    	HdfsUtils u = new HdfsUtils();
    	u.mergeFile(path, File);
    }
    
    public void writeResponse(HttpServletResponse response, String data) {
        OutputStream outputStream = null;
        response.setHeader("content-type", "text/html;charset=UTF-8");
        try {
            outputStream = response.getOutputStream();
            byte[] dataByteArr = new byte[0];
            dataByteArr = data.getBytes("UTF-8");
            outputStream.write(dataByteArr);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private String writeToFile(byte[] copy, InputStream iStream, int size, String savePath, String fileName, String json) {
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

    private int getParkingReady(JSONObject json){
       double diviation=4;

       if( diviation((String) json.get("x"),19.0)<diviation  && diviation((String) json.get("y"),37.0)<diviation){
            return 1;
        };
        if( diviation((String) json.get("x"),62.0)<diviation  && diviation((String) json.get("y"),22.0)<diviation){
            return 1;
        };
        if( diviation((String) json.get("x"),72.0)<diviation  && diviation((String) json.get("y"),45.0)<diviation){
            return 1;
        };
        if( diviation((String) json.get("x"),74.0)<diviation  && diviation((String) json.get("y"),79.0)<diviation){
            return 1;
        };
        if( diviation((String) json.get("x"),36.0)<diviation  && diviation((String) json.get("y"),60.0)<diviation){
            return 1;
        };
        return 0;
    }

    private Double diviation(String target,Double subject){

       Double b= Math.ceil(Double.valueOf(target)*100)-subject;
       return Math.abs(b);
    }

    
    @SuppressWarnings("rawtypes")
	private String writeToHdfs(InputStream stream, final String savePath, String fileName, String username, String market, String userGroup,String mimetype,long size) {

		String hdfsPath = HDFSDIR +savePath+".tmp"+"/"+ fileName;

		
		 @SuppressWarnings("unchecked")
		Future f = execute.submit(new Callable() {
	            @Override
	            public String call() throws Exception {
	            	HdfsUtils u = new HdfsUtils();
					try {
						BufferedInputStream zipTest = new BufferedInputStream(stream);
						u.uploadFile(zipTest, hdfsPath);
						zipTest.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
	                return hdfsPath;
	            }
	        });

		 
		try {
			logger.info("上传文件到hdfs,路径:" + f.get());
		} catch (InterruptedException e) {
			e.printStackTrace();
		} catch (ExecutionException e) {
			e.printStackTrace();
		}
		return hdfsPath;
	}

}
