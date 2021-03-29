package net.skhu.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import net.skhu.entity.Bukit;
import net.skhu.entity.Plan;

@Mapper
public interface BukitMapper {

	 @Update("UPDATE bukit "
	    		+ "SET bukitlist = #{bukitlist}  "
	    		+ "WHERE userId = #{userId}")
	    void update(Bukit bukit);
}
