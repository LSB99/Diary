package net.skhu.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Update;

import net.skhu.entity.Bukit;

@Mapper
public interface BukitMapper {

	@Insert("INSERT INTO bukit (userId, body) " + "VALUES (#{userId}, #{body}) ")
	@Options(useGeneratedKeys = true, keyProperty = "id")
	void insert(Bukit bukit);



	@Update("UPDATE bukit "
	         + "SET body = #{body}  "
			 + "WHERE userId = #{userId}")
	void update(Bukit bukit);
}
