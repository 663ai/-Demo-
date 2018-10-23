package com.lxl.jc.service;

import java.util.List;
import com.lxl.jc.pojo.Manager;

public interface ManagerService {
	
	List<Manager> getLogin(String managername,String passwd);
}
