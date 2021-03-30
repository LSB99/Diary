package net.skhu.entity;


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
	
	
	
	String time1;
	String sun1;
	String mon1;
	String tue1;
	String wed1;
	String thu1;
	String fri1;
	String sat1;

	
	
	String time2;
	String sun2;
	String mon2;
	String tue2;
	String wed2;
	String thu2;
	String fri2;
	String sat2; 
	
	
	
	String time3;
	String sun3;
	String mon3;
	String tue3;
	String wed3;
	String thu3;
	String fri3;
	String sat3;
	
	
	
	String time4;
	String sun4;
	String mon4;
	String tue4;
	String wed4;
	String thu4;
	String fri4;
	String sat4;
	
	
	
	String time5;
	String sun5;
	String mon5;
	String tue5;
	String wed5;
	String thu5;
	String fri5;
	String sat5;
	
	
	
	String time6;
	String sun6;
	String mon6;
	String tue6;
	String wed6;
	String thu6;
	String fri6;
	String sat6;
	
	
	
	String time7;
	String sun7;
	String mon7;
	String tue7;
	String wed7;
	String thu7;
	String fri7;
	String sat7;
	
	
	
	
	String time8;
	String sun8;
	String mon8;
	String tue8;
	String wed8;
	String thu8;
	String fri8;
	String sat8;

}
