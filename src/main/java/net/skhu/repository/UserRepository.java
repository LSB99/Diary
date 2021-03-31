package net.skhu.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import net.skhu.entity.User;

public interface UserRepository extends JpaRepository<User, String>  {

	User findByUserId(String userId);

	@Modifying
	@Query(value = "delete from user where userId=:userId", nativeQuery = true)
	@Transactional
	void deleteByUserId(@Param("userId") String userId);




}

