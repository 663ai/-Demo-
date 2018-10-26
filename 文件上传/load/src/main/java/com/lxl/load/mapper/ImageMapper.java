package com.lxl.load.mapper;

import com.lxl.load.entity.Image;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ImageMapper {

    @Insert("insert into put(id,name,url) values(#{id},#{name},#{url})")
    void insert(@Param("id") String id, @Param("name") String name, @Param("url") String url);
    @Select("select * from put")
    List<Image> all();
}
