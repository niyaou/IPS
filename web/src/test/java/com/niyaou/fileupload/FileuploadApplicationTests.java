package com.niyaou.fileupload;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;

import org.bytedeco.javacv.FFmpegFrameGrabber;
import org.bytedeco.javacv.Frame;
import org.bytedeco.javacv.Java2DFrameConverter;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.madgag.gif.fmsware.AnimatedGifEncoder;

@RunWith(SpringRunner.class)
@SpringBootTest
public class FileuploadApplicationTests {


//    @Test
    public void contextLoads() throws java.lang.Exception {
        int indexFrame=50;
       String  videofile="D:\\y2mate66z8R5HPxsE_1080p.mp4";
       FFmpegFrameGrabber ff = new FFmpegFrameGrabber(videofile);
       ff.start();
       try {
           int lenght = ff.getLengthInFrames();
           int i = 0;
           Frame f = null;
           while (i < lenght) {
               f = ff.grabFrame();
               if ((i % indexFrame==0) && (f.image != null)) {
                   int owidth = f.imageWidth ;
                   int oheight = f.imageHeight ;
                   int width = 800;
                   int height = (int) (((double) width / owidth) * oheight);
                   Java2DFrameConverter converter =new Java2DFrameConverter();
                   BufferedImage fecthedImage =converter.getBufferedImage(f);
                   BufferedImage bi = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);
                   bi.getGraphics().drawImage(fecthedImage.getScaledInstance(width, height, Image.SCALE_SMOOTH),
                           0, 0, null);
//                   bi=rotateImage(bi, 90);
                   File targetFile = new File(videofile.substring(0,videofile.lastIndexOf("."))+"image"+i+".jpg");
                   ImageIO.write(bi, "jpg", targetFile);
               }
               i++;
           }
          
       }finally {
           ff.stop();
           ff.close();
       }
    }

    
    @Test
    public  void buildGif() throws IOException {
        int startFrame=20;
        int margin =0;
        float frameRate=2.5f;
        int totalTime=10;
     
//       String  videofile="D:\\y2mate66z8R5HPxsE_1080p.mp4";
       String  videofile="D:\\20890696_5803efcc57385f337b2465844895a85b_ff76dbb9bb9f_2.mp4";
        FileOutputStream targetFile = new FileOutputStream(videofile.substring(0,videofile.lastIndexOf("."))+".gif");
        FFmpegFrameGrabber ff = new FFmpegFrameGrabber(videofile);
        Java2DFrameConverter converter = new Java2DFrameConverter();
        ff.start();
        try {
//            System.out.println(ff.getFrameRate());
//            System.out.println(ff.getLengthInFrames());
//            System.out.println(ff.getLengthInTime());
            
            ff.setVideoFrameNumber(startFrame);
          
            margin=(int) (ff.getLengthInFrames()/(frameRate*totalTime));
            AnimatedGifEncoder en = new AnimatedGifEncoder();
            en.setFrameRate(frameRate);
            en.setRepeat(0);
            en.setQuality(20);
//            en.setDelay(500);
//            en.setSize(320, 240);
            en.start(targetFile);
            int total=ff.getFrameNumber();
            long time=System.currentTimeMillis();
            int i=startFrame;
            long recursive=0;
            long creategif=0;
            long step1=0;
            long step2=0;
            long step3=0;
            long step4=0;
            long step5=0;
            long step6=0;
            long c=0;
            long cstep1=0;
            long cstep2=0;
            long cstep3=0;
            long cstep4=0;
            long cstep5=0;
            while(i<ff.getLengthInFrames()) {
                
                if (i % margin==0 ) {
                     c=System.currentTimeMillis();
                    cstep1=System.currentTimeMillis();
                    BufferedImage b=converter.convert(ff.grab());
                    step1+=(System.currentTimeMillis()-cstep1);
                    
                    
                   int w= b.getWidth();
                   int h= b.getHeight();
                   
                   
                    cstep2=System.currentTimeMillis();
                    BufferedImage bufferedImage=new BufferedImage(w/2,h/2,BufferedImage.TYPE_INT_RGB);
                    Graphics graphics=bufferedImage.getGraphics();
                    step2+=(System.currentTimeMillis()-cstep2);
                    
                     cstep3=System.currentTimeMillis();
                    graphics.drawImage(b,0,0,w/2,h/2,null);
                    step3+=(System.currentTimeMillis()-cstep3);
                    
                    cstep4=System.currentTimeMillis();
                    en.addFrame(bufferedImage);
                    step4+=(System.currentTimeMillis()-cstep4);
                    
                    
                    cstep5=System.currentTimeMillis();
//                    ff.setFrameNumber(i+margin);
                    ff.setVideoFrameNumber(i+margin);
                    step5+=(System.currentTimeMillis()-cstep5);
                    
                    
                    creategif+=(System.currentTimeMillis()-c);
                }
                i++;
                recursive+=(System.currentTimeMillis()-time);
                time=System.currentTimeMillis();
            }
           System.out.println("----- recursive:"+recursive);
           System.out.println("----- creategif:"+creategif);
           System.out.println("----- step1:"+step1);
           System.out.println("----- step2:"+step2);
           System.out.println("----- step3:"+step3);
           System.out.println("----- step4:"+step4);
           System.out.println("----- step5:"+step5);
            en.finish();
        }finally {
            ff.stop();
            ff.close();
        }
    }
    
    @Test
    public void pathTest() {
        String folder="/tmp/bac";
        String file="/tmp/tvvsdaf.exe";
        
        getff(folder);
        getff(file);
        
    }
    
    private void getff(String f) {
        String folder=f.substring(0,f.lastIndexOf("/")+1);
        String name="";
        String type="";
        int count =0;
        if(f.contains(".")) {
            name=f.substring(f.lastIndexOf("/")+1,f.lastIndexOf("."));
            type=f.substring(f.lastIndexOf("."),f.length());
            while(count<10) {
                System.out.println(folder+name+count+type); 
                count++;
            }
          
        }else {
            name=f.substring(f.lastIndexOf("/")+1,f.length());
            while(count<10) {
                System.out.println(folder+name+count+type);   
                count++;
            }
           
        }
    }
}

