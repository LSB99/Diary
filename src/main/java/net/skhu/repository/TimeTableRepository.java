package net.skhu.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import net.skhu.entity.TimeTable;

public interface TimeTableRepository extends JpaRepository<TimeTable, Integer>{

	@Modifying
	@Query(value = "insert into timetable(userId) VALUES (:userId)", nativeQuery = true)
	@Transactional
	void joinTimeTable(@Param("userId") String userId);
	
	
	@Modifying
	@Query(value = "delete from timetable where userId=:userId", nativeQuery = true)
	@Transactional
	void deleteTimeTable(@Param("userId") String userId);
	
	
	TimeTable findByUserId(String userId);
}
