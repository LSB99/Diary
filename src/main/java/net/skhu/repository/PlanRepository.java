package net.skhu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.entity.Plan;

public interface PlanRepository extends JpaRepository<Plan, Integer>  {


}