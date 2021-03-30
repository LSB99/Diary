package net.skhu.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import net.skhu.entity.Week;


@Mapper
public interface WeekMapper {


    @Update("UPDATE week "
    		+ "SET mon = #{mon}, tue = #{tue} , wed = #{wed} , "
    		+ "  thu = #{thu} ,  fri = #{fri} ,  sat = #{sat} ,  sun = #{sun}  "
    		+ " WHERE userId = #{userId}")
    void update(Week week);


}