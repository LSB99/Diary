package net.skhu.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import net.skhu.entity.Memos;

@Mapper
public interface MemosMapper {


	@Update("UPDATE memos "
    		+ "SET body = #{body}  "
    		+ "WHERE userId = #{userId}")
    void update(Memos memo);

}
