package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.repository.OrderItemsRepository;


@Service
public class OrderItemsService {
	@Autowired
	OrderItemsRepository orderItemRepo;

	public void deleteItem(Integer item_id)
	{
		orderItemRepo.deleteById(item_id);
	}
}
