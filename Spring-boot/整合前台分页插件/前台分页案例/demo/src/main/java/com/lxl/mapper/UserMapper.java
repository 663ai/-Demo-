package com.lxl.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import com.lxl.entity.UserInfo;

@Repository("userMapper")
public interface UserMapper {
	@Select("select * from tb_user,tb_type where tb_user.typeid = tb_type.id ")
	ArrayList<UserInfo> getAllUsers();
}
