package net.skhu.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Update;

import net.skhu.entity.Diary;

@Mapper
public interface DiaryMapper {

	@Insert("INSERT INTO diary (userId, title, body, writeDate) "
			+ "VALUES (#{userId}, #{title}, #{body}, #{writeDate}) ")
	@Options(useGeneratedKeys = true, keyProperty = "id")
	void insert(Diary diary);



	@Update("UPDATE diary " + "SET title = #{title}, body = #{body} ,  writeDate = #{writeDate}  "
			+ "WHERE userId = #{userId}")
	void update(Diary diary);

}
