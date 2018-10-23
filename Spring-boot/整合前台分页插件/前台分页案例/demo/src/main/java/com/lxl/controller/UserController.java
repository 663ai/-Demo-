package com.lxl.controller;

import java.util.ArrayList;
import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import com.lxl.entity.UserInfo;
import com.lxl.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("/page")
	public ModelAndView showUsers(){
		ModelAndView mv = null;
		try {
			mv = new ModelAndView("admin/page.jsp");
			ArrayList<UserInfo> users=userService.getAllUsers();
			mv.addObject("data", users);
			System.out.println(users);
		} catch (Exception e) {
			mv = new ModelAndView("admin/error.html");
			e.printStackTrace();
		}
		return mv;
	}
}
