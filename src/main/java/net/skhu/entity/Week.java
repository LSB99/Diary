package net.skhu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Week {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	 int id;


	String userId;

	String mon;

	String tue;

	String wed;

	String thu;

	String fri;

	String sat;

	String sun;

}
