package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.entity.productEntity;

@Repository
public interface ProductRepository extends JpaRepository<productEntity,Integer>{

}
