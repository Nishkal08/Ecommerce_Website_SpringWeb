package com.configuration;

import java.time.LocalDateTime;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.dto.ProductDto;
import com.entity.orderEntity;
import com.entity.orderItemsEntity;

@Configuration
public class AppConfiguration {

	@Bean
	public BCryptPasswordEncoder passwordEncoder()
	{
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public LocalDateTime getCurrentTime()
	{
		return LocalDateTime.now();
	}
	 @Bean
	 public orderItemsEntity orderItemsEntity() {
	       return new orderItemsEntity();
	 }

	 @Bean
	 public orderEntity orderEntity() {
	       return new orderEntity();
	 }
}
