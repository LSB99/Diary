package net.skhu.model;
import lombok.Data;
import net.skhu.entity.UserId;

@Data
public class Pagination {

	int pg=1;

	int sz=10;

	int du = 0;

	String di=UserId.currentUserName();

	int recordCount;


	public String getQueryString() {

		return String.format("pg=%d&sz=%d", pg, sz);

	}

}
