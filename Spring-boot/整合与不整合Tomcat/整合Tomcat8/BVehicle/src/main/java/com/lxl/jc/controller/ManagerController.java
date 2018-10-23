package com.lxl.jc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxl.jc.pojo.Manager;
import com.lxl.jc.service.ManagerService;

@Controller
public class ManagerController {
	
	@Autowired
	private ManagerService managerService;

	@RequestMapping("login")
	public ModelAndView Login(HttpServletRequest request){
		ModelAndView mv=null;
		String name=request.getParameter("managername");
		String pass=request.getParameter("passwd");
		try {
			mv = new ModelAndView("index");
			List<Manager> managers=managerService.getLogin(name, pass);
			if(managers!=null){
				mv.addObject("manager",managers.get(0).getManagername());
			}else{
				mv = new ModelAndView("error");
				System.out.println("没有这样的用户");
			}
		} catch (Exception e) {
			mv = new ModelAndView("error");
			e.printStackTrace();
		}
		return mv;
		
	}
}
