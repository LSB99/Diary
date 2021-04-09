package net.skhu.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Update;

import net.skhu.entity.Plan;


@Mapper
public interface PlanMapper {

	@Insert("INSERT INTO plan (userId, body, today) "
			+ "VALUES (#{userId}, #{body}, #{today}) ")
	@Options(useGeneratedKeys=true, keyProperty="id")
	void insert(Plan plan);


	 @Update("UPDATE plan  "
	          + "SET today = #{today}, body = #{body}  "
	    	  + "WHERE userId = #{userId}")
	 void update(Plan plan);
}
