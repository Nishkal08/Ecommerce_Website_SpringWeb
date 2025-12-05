package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.entity.orderItemsEntity;

@Repository
public interface OrderItemsRepository extends JpaRepository<orderItemsEntity,Integer>{
}
