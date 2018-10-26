package com.lxl.load.controller;

import com.lxl.load.entity.Image;
import com.lxl.load.service.ImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@RestController
public class ImageController {
    @Autowired
    private ImageService imageService;

    @RequestMapping("uploadFile")
    public void uploadFile(MultipartFile file) throws Exception{
        ModelAndView mv=null;
        String fileName= file.getOriginalFilename();
        String name=file.getName();
        System.out.println("name="+name);
        System.out.println("fileName="+fileName);
        String random= UUID.randomUUID().toString();
        int index=fileName.lastIndexOf(".");
        String exet=fileName.substring(index);
        Date date =new Date();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");
        String dateStr=sdf.format(date);
        String filePath="C:\\Users\\Administrator\\Desktop\\load\\src\\main\\resources\\static\\uploads\\"+dateStr;
        File file1 =new File(filePath);
        if(!file1.exists()){
            file1.mkdir();
        }
        filePath+="\\" + random+ exet;
        file.transferTo(new File(filePath));
        System.out.println("C:\\Users\\Administrator\\Desktop\\load\\src\\main\\resources\\static\\uploads\\"+dateStr+"\\"+random+ exet);
        String url="uploads/"+dateStr+"/"+random+ exet;
        System.out.println(dateStr);
        imageService.insert(random.substring(0,8)  , fileName, url);
    }

    @RequestMapping("index")
    public ModelAndView index(Map<String,Object> map){
        List<Image> list=imageService.all();
        map.put("image", list);
        System.out.println(list);
        ModelAndView mv=null;
        mv=new ModelAndView("index");
        return mv;
    }

    @RequestMapping("picture")
    public ModelAndView picture(){
        ModelAndView mv=null;
        mv=new ModelAndView("picture");
        return mv;
    }
}

