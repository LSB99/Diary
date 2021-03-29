package net.skhu.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import net.skhu.entity.Memos;
import net.skhu.entity.TimeTable;

@Mapper
public interface TimeTableMapper {
	
	
	@Update("UPDATE timetable"
    		+ "SET  time = #{time} ,   sun = #{sun} ,  mon = #{mon}, tue = #{tue} , wed = #{wed} , "
    	    + "  thu = #{thu} ,  fri = #{fri} ,  sat = #{wed}  "
    		+ "WHERE userId = #{userId}")
    void update(TimeTable timetable);

}
