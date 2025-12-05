package com.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.configuration.AppConfiguration;
import com.dto.addressDTO;
import com.entity.orderEntity;
import com.entity.orderItemsEntity;
import com.entity.productEntity;
import com.entity.userEntity;
import com.repository.OrderItemsRepository;
import com.repository.OrderRepository;
import com.repository.UserRepository;
import com.service.ProductService;
import com.service.UserValidationService;
import com.util.CookieUtil;
import com.util.TokenUtil;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class OrderController {

	@Autowired
	ProductService productService;
		
	
	@Autowired
	OrderRepository orderRepo;
	
	@Autowired
	AppConfiguration appConfig;
	
	@Autowired
	TokenUtil tokenUtil;
	
	@Autowired
	OrderItemsRepository orderItemsRepo;
	
	@Autowired
	orderEntity order;
	
	@Autowired
	UserRepository userRepo;
	
	@Autowired 
	UserValidationService userValidator;
	
	@PostMapping("/addtocart")
	public String cart(@ModelAttribute("product_id")Integer product_id,@ModelAttribute("quantity")Integer quantity,Model model
						,RedirectAttributes redirectAttribute,HttpServletRequest request,
						RedirectAttributes redirectAttributes)
	{
		
			boolean isLogin = false;
			String token = CookieUtil.getTokenFromCookie(request);
			if(token == null || tokenUtil.isTokenExpired(token))
			{
				redirectAttributes.addFlashAttribute("isLogin",isLogin);

				return "redirect:/signup";
			}
			else
			{				
				orderItemsEntity item = new orderItemsEntity();	
				userEntity user = userRepo.getByToken(token);
				productEntity product = productService.getProductById(product_id);
				Integer stock_quantity = product.getStock_quantity();
				product.setStock_quantity(stock_quantity-quantity);
				productService.save(product);
				item.setItem_price(product.getPrice());
				item.setQuantity(quantity);
				item.setSubtotal(product.getPrice()*quantity);
				item.setProduct(product);
				item.setUser(user);
				orderItemsRepo.save(item);
				return "redirect:/viewcart";
			}
	
	}
	
	@GetMapping("/viewcart")
	public String viewCart(Model model,HttpServletRequest request,RedirectAttributes redirectAttributes)
	{
		
		boolean isLogin = false;
		String token = CookieUtil.getTokenFromCookie(request);
		if(tokenUtil.isTokenExpired(token) || token == null || userRepo.getByToken(token) == null)
		{
			redirectAttributes.addFlashAttribute("isLogin",isLogin);
			return"redirect:/signup";
			
		}
		else
		{			
			userEntity user = userRepo.getByToken(token);
			List<orderItemsEntity> items_list = user.getOrderItems();
			model.addAttribute("items", items_list);	
			Integer totalAmount = 0;
			for(orderItemsEntity items:items_list)
			{
				totalAmount = totalAmount+items.getSubtotal();
			}
			model.addAttribute("total_amount",totalAmount);
			return "cart";
		}
	}
	
	@GetMapping("/deleteItem/{item_id}")
	public String deleteItem(@PathVariable("item_id")Integer item_id)
	{
		orderItemsRepo.deleteById(item_id);
		
		return "redirect:/cart";
	}
	
	@GetMapping("/generate-invoice")
	public String getInvoice(@RequestParam("total_amount")Integer total_amount,Model model,HttpServletRequest request,
							RedirectAttributes redirectAttribute)
	{
		String token = CookieUtil.getTokenFromCookie(request);
		userEntity user = userRepo.getByToken(token);
		orderEntity order = new orderEntity();		
		List<orderItemsEntity> orderItems = new ArrayList<>();
		for(orderItemsEntity newOrderItems : user.getOrderItems()) 
		{
			orderItemsEntity item = new orderItemsEntity();
			item.setItem_id(newOrderItems.getItem_id());
			item.setItem_price(newOrderItems.getItem_price());
			item.setProduct(newOrderItems.getProduct());
			item.setQuantity(newOrderItems.getQuantity());
			item.setSubtotal(newOrderItems.getSubtotal());
			item.setUser(newOrderItems.getUser());
			orderItems.add(item);
		}
		order.setTotal_amount(total_amount);
		order.setOrder_date(LocalDateTime.now());
		order.setUser(user);
		order.setStatus("success");
		order.setOrderItems(orderItems);
		orderRepo.save(order);

		LocalDate date= order.getOrder_date().toLocalDate();
		model.addAttribute("order",order);
		model.addAttribute("orderItems",orderItems);
		model.addAttribute("date",date);		
		return"invoice";
	}
	@PostMapping("shipping-details")
	public String shippingAddress(@RequestParam("total_amount") Integer total_amount,
								  HttpServletRequest request,Model model){
		
		userEntity user = userRepo.getByToken(CookieUtil.getTokenFromCookie(request)) ;
		model.addAttribute("total_amount",total_amount);
		model.addAttribute("user", user);
		return "shippingAddress";
	}
	
	@PostMapping("/shipping-address")
	public String recordShippingAddress(addressDTO address,
										HttpServletRequest request,
										@RequestParam("total_amount") Integer total_amount,
										RedirectAttributes redirectAttribute , 
										Model model)
										
	{

		userEntity user = userRepo.getByToken(CookieUtil.getTokenFromCookie(request));
			
			user.setAddress(address.getAddress());
			user.setCountry(address.getCountry());
			user.setState(address.getState());
			user.setZipcode(address.getZipcode());
			userRepo.save(user);
			System.out.println("Zipcode : "+address.getZipcode());
			System.out.println("usrname : "+address.getUsername());
			System.out.println("Total amount : "+total_amount);
			redirectAttribute.addAttribute("total_amount",total_amount);
			return "redirect:/generate-invoice";
	}

}
