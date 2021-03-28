package net.skhu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.entity.Diary;

public interface DiaryRepository extends JpaRepository<Diary, Integer>  {


}