package com.lxl.load.service.impl;

import com.lxl.load.entity.Image;
import com.lxl.load.mapper.ImageMapper;
import com.lxl.load.service.ImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class ImageServiceImpl implements ImageService {
    @Autowired
    private ImageMapper imageMapper;

    public void insert(String id ,String name,String url){
        imageMapper.insert(id, name, url);
    }
    public List<Image> all(){
        return imageMapper.all();
    }

}
