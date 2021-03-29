package net.skhu.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import net.skhu.entity.Plan;

public interface PlanRepository extends JpaRepository<Plan, Integer>  {


	@Modifying
	@Query(value = "insert into plan(userId) VALUES (:userId)", nativeQuery = true)
	@Transactional
	void joinPlan(@Param("userId") String userId);
	
	
	@Modifying
	@Query(value = "delete from plan where userId=:userId", nativeQuery = true)
	@Transactional
	void deletePlan(@Param("userId") String userId);
	
	
	Plan findByUserId(String userId);
	
}