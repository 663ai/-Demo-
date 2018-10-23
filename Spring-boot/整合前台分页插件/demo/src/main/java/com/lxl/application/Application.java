package com.lxl.application;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

@EnableAutoConfiguration
@ComponentScan(basePackages={"com.lxl.controller","com.lxl.serviceImpl"})
@MapperScan(value="com.lxl.mapper")
public class Application {
    public static void main(String[] args0) {
        SpringApplication.run(Application.class, args0);
    }
}

