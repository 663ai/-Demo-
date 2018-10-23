package com.lxl.jc.mapper;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import com.lxl.jc.pojo.Manager;

public interface ManagerMapper {
	
	@Select("select * from manager where managername=#{managername} and passwd=#{passwd}")
	ArrayList<Manager> getLogin(@Param("managername")String managername,@Param("passwd")String passwd);
}
