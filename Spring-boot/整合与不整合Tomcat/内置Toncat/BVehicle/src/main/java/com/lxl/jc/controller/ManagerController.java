package com.lxl.jc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lxl.jc.pojo.Manager;
import com.lxl.jc.service.ManagerService;

@Controller
public class ManagerController {
	
	@Autowired
	private ManagerService managerService;
	
	@RequestMapping("bc/login")
	@ResponseBody
	public ModelAndView Login(HttpServletRequest request){
		ModelAndView mv=null;
		String name=request.getParameter("managername");
		String pass=request.getParameter("passwd");
		try {
			System.out.println("进入controller，！！！！！！");
			mv = new ModelAndView("bc/index");
			List<Manager> managers=managerService.getLogin(name, pass);
			if(managers!=null){
				System.out.println("哦哟，数据库有数据");
				mv.addObject("manager",managers.get(0).getManagername());
			}else{
				System.out.println("哦哟，数据库好像没有数据");
				mv = new ModelAndView("bc/error");
				System.out.println("没有这样的用户");
			}
		} catch (Exception e) {
			System.out.println("哦哟，不知道出了什么问题");
			mv = new ModelAndView("bakckck/error");
			e.printStackTrace();
		}
		return mv;
		
	}
}
