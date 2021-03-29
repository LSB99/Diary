package net.skhu.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import net.skhu.entity.Diary;
import net.skhu.entity.Plan;

public interface DiaryRepository extends JpaRepository<Diary, Integer> {

	@Modifying
	@Query(value = "insert into diary(userId) VALUES (:userId)", nativeQuery = true)
	@Transactional
	void joinDiary(@Param("userId") String userId);

	
	@Modifying
	@Query(value = "delete from diary where userId=:userId", nativeQuery = true)
	@Transactional
	void deleteDiary(@Param("userId") String userId);
	
	
	Diary findOneByUserId(String userId);
	
	List<Diary> findByUserId(String userId);
}