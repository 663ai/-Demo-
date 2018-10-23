package com.lxl.jc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lxl.jc.mapper.UserMapper;
import com.lxl.jc.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public int isUser(String name){
		return userMapper.isUser(name);
	}
}
