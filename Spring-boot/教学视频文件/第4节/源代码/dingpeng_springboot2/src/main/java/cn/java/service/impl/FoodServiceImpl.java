/**
 * Project Name:dingpeng_springboot2
 * File Name:FoodServiceImpl.java
 * Package Name:cn.java.service.impl
 * Date:下午8:41:52
 * Copyright (c) 2018, bluemobi All Rights Reserved.
 *
*/

package cn.java.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.entity.Food;
import cn.java.mapper.FoodMapper;
import cn.java.service.FoodService;

/**
 * Description: <br/>
 * Date: 下午8:41:52 <br/>
 * 
 * @author 丁鹏
 * @version
 * @see
 */
@Service
public class FoodServiceImpl implements FoodService {

    @Autowired
    private FoodMapper foodMapper;

    @Override
    public boolean saveFood(Food food) {
        return foodMapper.addFood(food) >= 1 ? true : false;
    }

    @Override
    public boolean removeFood(Long id) {
        return foodMapper.delFood(id) >= 1 ? true : false;
    }

    @Override
    public List<Map<String, Object>> selectAllFood() {
        return foodMapper.getAllFood();
    }

}
