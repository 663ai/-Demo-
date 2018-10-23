package com.lxl.serviceImpl;

import java.util.ArrayList;
import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lxl.mapper.UserMapper;
import com.lxl.entity.UserInfo;
import com.lxl.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	public ArrayList<UserInfo> getAllUsers() {
		return userMapper.getAllUsers();
	}

}
