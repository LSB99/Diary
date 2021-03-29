package net.skhu.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import net.skhu.entity.Bukit;
import net.skhu.entity.Memos;
import net.skhu.entity.Plan;

public interface MemoRepository extends JpaRepository<Memos, Integer>  {

	
	@Modifying
	@Query(value = "insert into memos(userId) VALUES (:userId)", nativeQuery = true)
	@Transactional
	void joinMemos(@Param("userId") String userId);

	
	@Modifying
	@Query(value = "delete from memos where userId=:userId", nativeQuery = true)
	@Transactional
	void deleteMemos(@Param("userId") String userId);
	
	
	Memos findOneByUserId(String userId);
	
	List<Memos> findByUserId(String userId);
}