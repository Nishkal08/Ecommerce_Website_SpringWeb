package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.entity.orderItemsEntity;
import com.entity.productEntity;
import com.repository.OrderItemsRepository;
import com.service.ProductService;

@Controller
public class PageController {
	@Autowired
	OrderItemsRepository OrderItemsRepo;
	
	@Autowired
	ProductService productService;
	
	@GetMapping("/ecomm")
	public String login(Model model)
	{
		List<productEntity> products = productService.getAllProducts();
		model.addAttribute("products",products);
		return "index";
	}
	@GetMapping("/index")
	public String index(Model model)
	{
		List<productEntity> products = productService.getAllProducts();
		model.addAttribute("products",products);
		return "index";
	}
	

	@GetMapping("/blog")
	public String blog()
	{
		return "blog";
	}
	@GetMapping("/about")
	public String about()
	{
		return "about";
	}
	@GetMapping("/cart")
	public String cart(Model model)
	{
		List<orderItemsEntity> items = OrderItemsRepo.findAll();
		model.addAttribute("items", items);
		return "cart";
	}
	@GetMapping("/contact")
	public String contact()
	{
		return "contact";
	}


	
}
