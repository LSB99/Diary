package net.skhu.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import net.skhu.entity.Week;

public interface WeekRepository extends JpaRepository<Week, Integer>  {


	@Modifying
	@Query(value = "insert into week(userId) VALUES (:userId)", nativeQuery = true)
	@Transactional
	void joinWeek(@Param("userId") String userId);


	@Modifying
	@Query(value = "delete from week where userId=:userId", nativeQuery = true)
	@Transactional
	void deleteWeek(@Param("userId") String userId);




	Week findOneByUserId(String userId);

	List<Week> findByUserId(String userId);

}

