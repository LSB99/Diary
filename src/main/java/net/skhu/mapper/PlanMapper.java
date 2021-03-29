package net.skhu.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import net.skhu.entity.Plan;
import net.skhu.entity.Week;


@Mapper
public interface PlanMapper {

	
	 @Update("UPDATE plan  "
	          + "SET today = #{today}, todayplan = #{todayplan}  "
	    	  + "WHERE userId = #{userId}")
	 void update(Plan plan);
}
