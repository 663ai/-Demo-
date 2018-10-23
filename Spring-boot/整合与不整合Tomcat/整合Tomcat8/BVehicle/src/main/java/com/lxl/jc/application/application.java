package com.lxl.jc.application;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

@EnableAutoConfiguration
@ComponentScan(basePackages={"com.lxl.jc.controller","com.lxl.jc.service.impl"})
@MapperScan(value="com.lxl.jc.mapper")
public class application {
	
	public static void main(String[] args0) {
		SpringApplication.run(application.class, args0);
	}
}
