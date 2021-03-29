package net.skhu.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import net.skhu.entity.Diary;
import net.skhu.entity.Plan;

@Mapper
public interface DiaryMapper {
	
	
	 @Update("UPDATE diary "
	    		+ "SET title = #{title}, diarylist = #{diarylist} ,  writeDate = #{writeDate}  "
	    		+ "WHERE userId = #{userId}")
	    void update(Diary diary);

}
