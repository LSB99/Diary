package net.skhu.entity;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;


@Data
@Entity
public class TimeTable {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	 int id;

	String userId;
	
	String time;
	
	String sun;
	
	String mon;

	String tue;

	String wed;

	String thu;

	String fri;

	String sat;

	

}
