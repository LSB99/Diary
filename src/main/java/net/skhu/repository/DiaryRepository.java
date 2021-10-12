package net.skhu.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import net.skhu.entity.Diary;
import net.skhu.model.Option;
import net.skhu.model.Pagination;

public interface DiaryRepository extends JpaRepository<Diary, Integer> {



	Option[] searchBy= {new Option(0, "검색없음"), new Option(1, "제목"), new Option(2, "본문")};


	public default List<Diary> findByUserId(String userId, Pagination pagination){
		Page<Diary> page=this.findByUserId(pagination.getDi(), PageRequest.of(pagination.getPg()-1, pagination.getSz(),
				Sort.Direction.DESC, "no"));
		pagination.setRecordCount((int)page.getTotalElements());
		return page.getContent();

	}


	public default List<Diary> findAll(Pagination pagination) {

        Pageable pageable =
                PageRequest.of(pagination.getPg() - 1, pagination.getSz(), Sort.Direction.DESC, "no");

      Page<Diary> page;
      String userId = pagination.getDi();
      String searchText = pagination.getSt();
      switch (pagination.getSb()) {
      case 1: page = this.findByUserIdAndTitleContains(userId, searchText, pageable); break;
      case 2: page = this.findByUserIdAndBodyContains(userId, searchText, pageable); break;
      default: page = this.findByUserId(userId, pageable); break;
      }
      pagination.setRecordCount((int)page.getTotalElements());
      return page.getContent();
  }

  public Page<Diary> findByUserId(String userId, Pageable pageable);
  public Page<Diary> findByUserIdAndTitleContains(String userId, String title, Pageable pageable);
  public Page<Diary> findByUserIdAndBodyContains(String userId, String body, Pageable pageable);



	@Query("SELECT MAX(a.no) FROM Diary a WHERE a.userId = ?1")
    public int findMaxNo(String userId);

    @Modifying
    @Query("UPDATE Diary SET title=:title, body=:body, writeDate=CURRENT_TIMESTAMP() WHERE id=:id")
    public void update(@Param("id") int id, @Param("title") String title, @Param("body") String body);
}