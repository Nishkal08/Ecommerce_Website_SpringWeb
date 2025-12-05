package com.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.configuration.AppConfiguration;
import com.entity.productEntity;
import com.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@Autowired
	AppConfiguration datetime;
	

	@GetMapping("/viewproduct")
	public String productView(@RequestParam("imgUrl")String imgUrl,
							  @RequestParam("productId")Integer ProductId,
							  Model model)
	{
		model.addAttribute("url",imgUrl);
		
		productEntity product = productService.getProductById(ProductId);
		model.addAttribute("product",product);
		return "productDetails";
	}
	
	@GetMapping("/addproduct")
	public String addProduct()
	{
		return "addProduct";
	}
	
	
//	
	@GetMapping("/shop")						//List Products
	public String listProducts(Model model)
	{
		List<productEntity> products = productService.getAllProducts();
		model.addAttribute("products",products);
//		model.addAttribute("userId",userId);
		return "shop";
	}
	
}
