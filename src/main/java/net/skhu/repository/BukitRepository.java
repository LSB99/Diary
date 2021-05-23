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

import net.skhu.entity.Bukit;
import net.skhu.model.Pagination;

public interface BukitRepository extends JpaRepository<Bukit, Integer> {


	Page<Bukit> findByUserId(String userId, Pageable pageable);

	Page<Bukit> findByBody(int du, PageRequest of);


	public default List<Bukit> findByUserId(String userId, Pagination pagination) {

		Page<Bukit> page = this.findByUserId(pagination.getDi(),

				PageRequest.of(pagination.getPg() - 1, pagination.getSz(),

						Sort.Direction.DESC, "id"));

		pagination.setRecordCount((int) page.getTotalElements());

		return page.getContent();

	}


	public default List<Bukit> findAll(Pagination pagination) {

		Page<Bukit> page = this

				.findAll(PageRequest.of(pagination.getPg() - 1, pagination.getSz(), Sort.Direction.ASC, "id"));

		pagination.setRecordCount((int) page.getTotalElements());

		return page.getContent();
	}


	public default List<Bukit> findByBody(Pagination pagination) {

		Page<Bukit> page = this.findByBody(pagination.getDu(),

				PageRequest.of(pagination.getPg() - 1, pagination.getSz(), Sort.Direction.ASC, "id"));

		pagination.setRecordCount((int) page.getTotalElements());

		return page.getContent();
	}


	@Modifying
	@Query(value = "delete from bukit where userId=:userId", nativeQuery = true)
	@Transactional
	void deleteBukit(@Param("userId") String userId);

	Bukit findOneByUserId(String userId);

	List<Bukit> findByUserId(String userId);

}
