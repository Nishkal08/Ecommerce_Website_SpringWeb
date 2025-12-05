package com.util;

import java.time.Duration;
import java.time.LocalDateTime;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.entity.userEntity;
import com.repository.UserRepository;

@Component
public class TokenUtil {

	@Autowired
	UserRepository userRepo;

	public String generateToken()
	{
		return UUID.randomUUID().toString();
		//method generates a random UUID (Universally Unique Identifier) as a token
	}
	
	public boolean isTokenExpired(String token) throws NullPointerException
	{
		LocalDateTime currentDatetime = LocalDateTime.now();
	
		userEntity user= userRepo.getByToken(token);
		if(user != null)
		{			
			LocalDateTime tokenCreatedOn = user.getTokenCreatedOn();
			Duration duration = Duration.between(tokenCreatedOn, currentDatetime);
			Integer hourDifference = (int)duration.toHours();
			if(hourDifference > 24 )
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		else
		{
			return false;
		}
	}

	
}
