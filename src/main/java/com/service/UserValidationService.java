package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.repository.UserRepository;

@Service
public class UserValidationService {

	@Autowired
	UserRepository userRepo;
	
	public boolean isEmailUnique(String email)
	{
		if(userRepo.existsByEmail(email))
		{
			return false;
		}
		return true;
	}
	public boolean isUsernameUnique(String username)
	{
		if(userRepo.existsByUsername(username))
		{
			return false;
		}
		
		return true;
	}
	public boolean isEmpty(String username)
	{
		if(username == null || username.trim().isEmpty())
		{
			return true;
		}
		return false;
	}
	
}
	

