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

import net.skhu.entity.Plan;
import net.skhu.model.Option;
import net.skhu.model.Pagination;

public interface PlanRepository extends JpaRepository<Plan, Integer>  {


	Option[] searchBy= {new Option(0, "검색없음"), new Option(1, "본문")};


	public default List<Plan> findByUserId(String userId, Pagination pagination){

		Page<Plan> page=this.findByUserId(pagination.getDi(), PageRequest.of(pagination.getPg()-1, pagination.getSz(),

				Sort.Direction.DESC, "id"));

		pagination.setRecordCount((int)page.getTotalElements());

		return page.getContent();

	}


	public default List<Plan> findAll(Pagination pagination) {

        Pageable pageable =
                PageRequest.of(pagination.getPg() - 1, pagination.getSz(), Sort.Direction.DESC, "today");

      Page<Plan> page;
      String userId = pagination.getDi();
      String searchText = pagination.getSt();
      switch (pagination.getSb()) {
      case 1: page = this.findByUserIdAndBodyContains(userId, searchText, pageable); break;
      default: page = this.findByUserId(userId, pageable); break;
      }
      pagination.setRecordCount((int)page.getTotalElements());
      return page.getContent();
  }

  public Page<Plan> findByUserId(String userId, Pageable pageable);
  public Page<Plan> findByUserIdAndBodyContains(String userId, String body, Pageable pageable);

	@Modifying
	@Query(value = "insert into plan(userId) VALUES (:userId)", nativeQuery = true)
	@Transactional
	void joinPlan(@Param("userId") String userId);


	@Modifying
	@Query(value = "delete from plan where userId=:userId", nativeQuery = true)
	@Transactional
	void deletePlan(@Param("userId") String userId);


	List<Plan> findByUserId(String currentuserId);
}