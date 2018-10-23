/**
 * Project Name:dingpeng_springboot2
 * File Name:FoodController.java
 * Package Name:cn.java.controller
 * Date:下午8:44:20
 * Copyright (c) 2018, bluemobi All Rights Reserved.
 *
*/

package cn.java.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.java.entity.Food;
import cn.java.service.FoodService;

/**
 * Description: <br/>
 * Date: 下午8:44:20 <br/>
 * 
 * @author 丁鹏
 * @version
 * @see
 */
@Controller
public class FoodController {
    @Autowired
    private FoodService foodService;

    /**
     * 
     * Description: 添加食品<br/>
     *
     * @author 丁鹏
     * @param food
     * @return
     */
    @RequestMapping("/insertFood.do")
    @ResponseBody
    public boolean insertFood(Food food) {
        return foodService.saveFood(food);
    }

    /**
     * 
     * Description: 删除<br/>
     *
     * @author 丁鹏
     * @param id
     * @return
     */
    @RequestMapping("/deleteFood.do")
    @ResponseBody
    public boolean deleteFood(Long id) {
        return foodService.removeFood(id);
    }

    /**
     * 
     * Description: 查询所有数据<br/>
     *
     * @author 丁鹏
     * @return
     */
    @RequestMapping("/getFoods.do")
    public String getFoods(HttpServletRequest request) {
        List<Map<String, Object>> foodList = foodService.selectAllFood();
        request.setAttribute("foodList", foodList);
        System.out.println(foodList);
        return "admin/listFoods.jsp";
    }

}
