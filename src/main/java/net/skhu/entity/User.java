package net.skhu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class User {
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	 int id;

   @Id
   String userId;

   String name;
   String password;

}
