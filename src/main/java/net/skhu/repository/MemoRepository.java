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

import net.skhu.entity.Memos;
import net.skhu.model.Pagination;

public interface MemoRepository extends JpaRepository<Memos, Integer>  {



	Page<Memos> findByUserId(String userId, Pageable pageable);

	public default List<Memos> findByUserId(String userId, Pagination pagination){
		Page<Memos> page=this.findByUserId(pagination.getDi(), PageRequest.of(pagination.getPg()-1, pagination.getSz(),
				Sort.Direction.DESC, "id"));
		pagination.setRecordCount((int)page.getTotalElements());
		return page.getContent();

	}


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