package net.skhu.dto;
import java.util.Date;

import lombok.Data;

@Data
public class Diary {
	int id;
	String userId;
	String title;
	String diarylist;
	Date writeDate;
}