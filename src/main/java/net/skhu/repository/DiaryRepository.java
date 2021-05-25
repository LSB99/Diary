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

import net.skhu.entity.Diary;
import net.skhu.model.Pagination;

public interface DiaryRepository extends JpaRepository<Diary, Integer> {


	Page<Diary> findByUserId(String userId, Pageable pageable);

	Page<Diary> findByTitle(int du, PageRequest of);


	public default List<Diary> findByUserId(String userId, Pagination pagination){
		Page<Diary> page=this.findByUserId(pagination.getDi(), PageRequest.of(pagination.getPg()-1, pagination.getSz(),
				Sort.Direction.DESC, "id"));
		pagination.setRecordCount((int)page.getTotalElements());
		return page.getContent();

	}


	public default List<Diary> findAll(Pagination pagination) {

		Page<Diary> page = this

				.findAll(PageRequest.of(pagination.getPg() - 1, pagination.getSz(), Sort.Direction.ASC, "id"));

		pagination.setRecordCount((int) page.getTotalElements());

		return page.getContent();
	}


	public default List<Diary> findByTitle(Pagination pagination) {

		Page<Diary> page = this.findByTitle(pagination.getDu(),

				PageRequest.of(pagination.getPg() - 1, pagination.getSz(), Sort.Direction.ASC, "id"));

		pagination.setRecordCount((int) page.getTotalElements());

		return page.getContent();
	}


	@Modifying
	@Query(value = "insert into diary(userId) VALUES (:userId)", nativeQuery = true)
	@Transactional
	void joinDiary(@Param("userId") String userId);


	@Modifying
	@Query(value = "delete from diary where userId=:userId", nativeQuery = true)
	@Transactional
	void deleteDiary(@Param("userId") String userId);

	@Query("SELECT MAX(a.no) FROM Diary a WHERE a.userId = ?1")
    public int findMaxNo(String userId);

    @Modifying
    @Query("UPDATE Diary SET title=:title, body=:body, writeDate=CURRENT_TIMESTAMP() WHERE id=:id")
    public void update(@Param("id") int id, @Param("title") String title, @Param("body") String body);


	Diary findOneByUserId(String userId);

	List<Diary> findByUserId(String userId);
}