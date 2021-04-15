package net.skhu.model;
import lombok.Data;
import net.skhu.entity.UserId;

@Data
public class Pagination {
	int pg=1;
	int sz=10;
	String di=UserId.currentuserId;
	int recordCount;

	public String getQueryString() {
		return String.format("pg=%d&sz=%d&di=%s", pg, sz, di);
	}

}
