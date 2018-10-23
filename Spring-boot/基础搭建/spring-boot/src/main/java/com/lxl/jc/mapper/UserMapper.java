package com.lxl.jc.mapper;

import org.apache.ibatis.annotations.Select;

public interface UserMapper {
	
	@Select("select COUNT(*) as num  FROM tb_user WHERE name=#{arg0}")
	int isUser(String name);
}
