package net.skhu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.entity.Memo;

public interface MemoRepository extends JpaRepository<Memo, Integer>  {


}