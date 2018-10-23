/**
 * Project Name:dingpeng_springboot2
 * File Name:FoodMapper.java
 * Package Name:cn.java.mapper
 * Date:下午8:37:34
 * Copyright (c) 2018, bluemobi All Rights Reserved.
 *
*/

package cn.java.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import cn.java.entity.Food;

/**
 * Description: 食品<br/>
 * Date: 下午8:37:34 <br/>
 * 
 * @author 丁鹏
 * @version
 * @see
 */
public interface FoodMapper {

    /**
     * 
     * Description: 添加数据<br/>
     *
     * @author 丁鹏
     * @param food
     * @return
     */
    @Insert("INSERT INTO foods(food_name,food_taste,food_price,food_description) VALUES(#{foodName},#{foodTaste},#{foodPrice},#{foodDescription})")
    int addFood(Food food);

    /**
     * 
     * Description: 删除<br/>
     *
     * @author 丁鹏
     * @param id
     * @param str
     * @return
     */
    @Delete("DELETE FROM foods WHERE id=#{arg0}")
    int delFood(Long id);

    /**
     * 
     * Description:查询foods表中的所有数据 <br/>
     *
     * @author 丁鹏
     * @return
     */
    @Select("SELECT * FROM foods")
    List<Map<String, Object>> getAllFood();
}
