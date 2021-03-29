package net.skhu.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import net.skhu.entity.Memos;
import net.skhu.entity.Plan;

@Mapper
public interface MemosMapper {
	
	
	@Update("UPDATE memos "
    		+ "SET memolist = #{memolist}  "
    		+ "WHERE userId = #{userId}")
    void update(Memos memo);

}
