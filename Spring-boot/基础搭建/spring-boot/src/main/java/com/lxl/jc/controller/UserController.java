package com.lxl.jc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.lxl.jc.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService ;
	
	@RequestMapping("/is.do")
	@ResponseBody
	public int is(String name){
		return userService.isUser(name);
	}
}
