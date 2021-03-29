package net.skhu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Bukit {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;

	String userId;
	
	String bukitlist;

	/*
	 * @ManyToOne
	 * 
	 * @JoinColumn(name="userId") User user;
	 */
}