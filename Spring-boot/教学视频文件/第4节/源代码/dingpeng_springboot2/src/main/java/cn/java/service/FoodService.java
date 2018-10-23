/**
 * Project Name:dingpeng_springboot2
 * File Name:FoodService.java
 * Package Name:cn.java.service
 * Date:下午8:41:20
 * Copyright (c) 2018, bluemobi All Rights Reserved.
 *
*/

package cn.java.service;

import java.util.List;
import java.util.Map;

import cn.java.entity.Food;

/**
 * Description: <br/>
 * Date: 下午8:41:20 <br/>
 * 
 * @author 丁鹏
 * @version
 * @see
 */
public interface FoodService {
    /**
     * 
     * Description: 添加食品<br/>
     *
     * @author 丁鹏
     * @param food
     * @return
     */
    boolean saveFood(Food food);

    /**
     * 
     * Description: 删除<br/>
     *
     * @author 丁鹏
     * @param id
     * @param str
     * @return
     */
    boolean removeFood(Long id);

    /**
     * 
     * Description:查询foods表中的所有数据 <br/>
     *
     * @author 丁鹏
     * @return
     */
    List<Map<String, Object>> selectAllFood();
}
