package net.skhu.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import net.skhu.entity.Week;
import net.skhu.model.Pagination;

public interface WeekRepository extends JpaRepository<Week, Integer>  {


	Page<Week> findByUserId(String userId, Pageable pageable);

	public default List<Week> findByUserId(String userId, Pagination pagination){
		Page<Week> page=this.findByUserId(pagination.getDi(), PageRequest.of(pagination.getPg()-1, pagination.getSz(),
				Sort.Direction.DESC, "id"));
		pagination.setRecordCount((int)page.getTotalElements());
		return page.getContent();

	}


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

