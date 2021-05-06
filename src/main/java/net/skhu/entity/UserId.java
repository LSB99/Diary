package net.skhu.entity;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

public class UserId {

	public static String currentUserName() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String userid=authentication.getName();
		return userid;
	}


}
