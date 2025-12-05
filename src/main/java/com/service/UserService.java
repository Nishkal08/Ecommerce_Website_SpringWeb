package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.userEntity;
import com.repository.UserRepository;

@Service	
public class UserService {
	@Autowired
	UserRepository userRepo;

	public userEntity getUserById(Integer userId) {
			return userRepo.findById(userId).orElse(null);
	}
	
	public List<userEntity> getAllUsers()
	{
		return userRepo.findAll();
	}
}
