package com.lxl.load.service;

import com.lxl.load.entity.Image;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ImageService {
    void insert(@Param("id") String id, @Param("name") String name, @Param("url") String url);
    List<Image> all();
}
