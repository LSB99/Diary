package net.skhu.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
@Entity
public class Plan {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;

	String userId;

	
	String todayplan;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date today;

	
	
}
