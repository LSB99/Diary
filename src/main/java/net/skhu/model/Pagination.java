package net.skhu.model;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import lombok.Data;
import net.skhu.entity.UserId;

@Data
public class Pagination {

	int pg=1;

	int sz=10;

	int sb;
	String st;

	String di=UserId.currentUserName();

	int recordCount;


	public String getQueryString() {
		String url = null;
		try {
			String temp=(st==null)? "" : URLEncoder.encode(st, "UTF-8");
			url=String.format("pg=%d&sz=%d&sb=%d&st=%s", pg, sz, sb, temp);
		} catch(UnsupportedEncodingException e) {}

		return url;

	}

}
