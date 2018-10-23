package com.lxl.jc.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lxl.jc.mapper.ManagerMapper;
import com.lxl.jc.pojo.Manager;
import com.lxl.jc.service.ManagerService;

@Service
public class ManagerServiceImpl implements ManagerService{
	@Autowired
	private ManagerMapper managerMapper;
	
	public List<Manager> getLogin(String managername,String passwd) {
		System.out.println("managerservice调用中！！！！！！！！！！！！");
		return managerMapper.getLogin(managername, passwd);
	}

}
