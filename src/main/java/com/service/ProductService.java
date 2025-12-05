package com.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.productEntity;
import com.repository.ProductRepository;

@Service
public class ProductService {

	@Autowired
	ProductRepository productRepo;
	public void addProduct(productEntity product)
	{
			productRepo.save(product);
	}
	public void updateProduct(productEntity product)
	{
			productRepo.save(product);
	}
	public List<productEntity> getAllProducts()
	{
		return productRepo.findAll();
	}

	public productEntity getProductById(Integer id) {
			return productRepo.findById(id).orElse(null);
	}
	
	public void deleteProduct(Integer id)
	{
		productRepo.deleteById(id);
	}
	public int numberOfProducts()
	{
		return  (int) productRepo.count();
	}
	public void save(productEntity product) {
		productRepo.save(product);
		
	}
}
