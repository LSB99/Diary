package net.skhu.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import net.skhu.entity.TimeTable;

@Mapper
public interface TimeTableMapper {
	
	
	@Update("UPDATE timetable  "
    + "SET  time1 = #{time1}, sun1 = #{sun1} ,  mon1 = #{mon1}, tue1 = #{tue1} , wed1 = #{wed1} , thu1 = #{thu1} ,  fri1 = #{fri1} ,  sat1 = #{sat1}, "
    + "  time2 = #{time2}, sun2 = #{sun2} ,  mon2 = #{mon2}, tue2 = #{tue2} , wed2 = #{wed2} , thu2 = #{thu2} ,  fri2 = #{fri2} ,  sat2 = #{sat2}, "
    + "  time3 = #{time3}, sun3 = #{sun3} ,  mon3 = #{mon3}, tue3 = #{tue3} , wed3 = #{wed3} , thu3 = #{thu3} ,  fri3 = #{fri3} ,  sat3 = #{sat3},  "
    + "  time4 = #{time4}, sun4 = #{sun4} ,  mon4 = #{mon4}, tue4 = #{tue4} , wed4 = #{wed4} , thu4 = #{thu4} ,  fri4 = #{fri4} ,  sat4 = #{sat4},  "
    + "  time5 = #{time5}, sun5 = #{sun5} ,  mon5 = #{mon5}, tue5 = #{tue5} , wed5 = #{wed5} , thu5 = #{thu5} ,  fri5 = #{fri5} ,  sat5 = #{sat5},  "
    + "  time6 = #{time6}, sun6 = #{sun6} ,  mon6 = #{mon6}, tue6 = #{tue6} , wed6 = #{wed6} , thu6 = #{thu6} ,  fri6 = #{fri6} ,  sat6 = #{sat6},  "
    + "  time7 = #{time7}, sun7 = #{sun7} ,  mon7 = #{mon7}, tue7 = #{tue7} , wed7 = #{wed7} , thu7 = #{thu7} ,  fri7 = #{fri7} ,  sat7 = #{sat7},  "
    + "  time8 = #{time8}, sun8 = #{sun8} ,  mon8 = #{mon8}, tue8 = #{tue8} , wed8 = #{wed8} , thu8 = #{thu8} ,  fri8 = #{fri8} ,  sat8 = #{sat8}  "
    + " WHERE userId = #{userId}")
    void update(TimeTable timetable);
	
	
	
	@Select("select *  "
			+ "from timetable "
			+ "where userId = #{userId}")
	TimeTable findByUserId(String userId);

}
