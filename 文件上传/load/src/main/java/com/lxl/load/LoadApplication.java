package com.lxl.load;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(value="com.lxl.load.mapper")
public class LoadApplication {
    public static void main(String[] args) {
        SpringApplication.run(LoadApplication.class, args);
    }
}
