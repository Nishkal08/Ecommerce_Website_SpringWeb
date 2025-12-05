package com.util;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.entity.userEntity;
import com.repository.UserRepository;

import jakarta.servlet.http.HttpServletRequest;

@Component
public class AdminUtil {

	@Autowired
	UserRepository userRepo;
	
	public boolean isAdmin(HttpServletRequest request)
	{
		userEntity user = userRepo.getByToken(CookieUtil.getTokenFromCookie(request));
		if(user.getRole().equals("ADMIN"))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
}
