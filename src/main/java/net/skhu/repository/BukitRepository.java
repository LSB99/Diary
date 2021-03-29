package net.skhu.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import net.skhu.entity.Bukit;

public interface BukitRepository extends JpaRepository<Bukit, Integer>  {






	@Modifying
	@Query(value = "delete from bukit where userId=:userId", nativeQuery = true)
	@Transactional
	void deleteBukit(@Param("userId") String userId);


	Bukit findOneByUserId(String userId);

	List<Bukit> findByUserId(String userId);
}

