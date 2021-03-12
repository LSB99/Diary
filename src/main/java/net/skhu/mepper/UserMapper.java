package net.skhu.mepper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import net.skhu.dto.User;


@Mapper
public interface UserMapper {


	@Select("select *  "
			+"from user "
			+ "where userId = #{userId} ")
	User findByuserId(String userId);


	@Select("select *  "
			+"from user "
			+ "where password = #{password} ")
	User findByPassWord(String password);


    @Update("UPDATE user "
    		+ "SET name = #{name}, userId = #{userId} , password = #{password}   "
    		+ "WHERE userId = #{userId}")
    void update(User user);


    @Insert("Insert user(name, userId , password) "
    		+ "values(#{name}, #{userId}, #{password}) ")
    @Options(useGeneratedKeys=true, keyProperty="id")
    void insert(User user);


    @Delete("Delete from user  "
    		+ "where userId=#{userId}")
    void delete(String userId);

}