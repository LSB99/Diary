package net.skhu.dto;

import java.util.Date;

import lombok.Data;

@Data
public class Plan {

	int userId;

	Date today;

	String todayplan;

	Date start;

	Date end;

	String weekplan;

}
