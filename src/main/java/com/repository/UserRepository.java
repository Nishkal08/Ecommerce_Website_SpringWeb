package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.entity.userEntity;

@Repository
public interface UserRepository extends JpaRepository<userEntity,Integer>{

//	userEntity getByEmail(String email);

	userEntity getByEmail(String email);
	userEntity getByUsername(String username);

	userEntity getByPassword(String password);


	boolean findByEmail(String email);
	boolean existsByEmail(String email);
	boolean existsByUsername(String username);
	userEntity getByToken(String token);
	

	

//	void save(userBean user);

}
