package com.controller.admin;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.configuration.AppConfiguration;
import com.entity.orderEntity;
import com.entity.productEntity;
import com.entity.userEntity;
import com.repository.OrderRepository;
import com.repository.UserRepository;
import com.service.ProductService;
import com.service.UserService;
import com.service.UserValidationService;
import com.util.AdminUtil;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	UserRepository userRepo;
	
	@Autowired
	AdminUtil adminUtil;
	
	@Autowired
	ProductService productService;
	
	
	@Autowired
	UserService userService;
	
	@Autowired
	AppConfiguration appConfig;
	
	@Autowired
	OrderRepository orderRepo;
	
	@Autowired
	UserValidationService userValidation;
	
	@GetMapping("/admin-dashboard")
	public String indexView(RedirectAttributes redirectAttributes,HttpServletRequest request,Model model)
	{
		boolean isAdmin = false;
		if(adminUtil.isAdmin(request))
		{
			isAdmin = true;
			Integer numberOfProducts = productService.numberOfProducts();
			Integer numberOfOrders = (int) orderRepo.count();
			Integer numberOfUsers = (int) userRepo.count();
			model.addAttribute("numberOfProducts", numberOfProducts);
			model.addAttribute("numberOfOrders", numberOfOrders);
			model.addAttribute("numberOfUsers", numberOfUsers);
			model.addAttribute("isAdmin",isAdmin);
			return "adminIndex";		
		}
		redirectAttributes.addFlashAttribute("isAdmin", isAdmin);
		return"redirect:/index";
		
	}
	
	@GetMapping("/list")
	public String listProducts(@RequestParam("type") String type,HttpServletRequest request,
								Model model)
	{
		if(adminUtil.isAdmin(request))
		{
			
			if(type.equals("products"))
			{
				List<productEntity> products = productService.getAllProducts();
				model.addAttribute("products", products);
				return"ProductCRUD";
				
			}
			else if(type.equals("users"))
			{
				List<userEntity> users = userService.getAllUsers();
				model.addAttribute("users", users);
				return"UserCRUD";
				
			}
			else if(type.equals("orders"))
			{
				List<orderEntity> orders= orderRepo.findAll();
				model.addAttribute("orders", orders);
				return"orderCRUD";
				
			}
			else
			{
				return"redirect:/admin-dashboard";
			}
		}
		else
		{
			return"redirect:/index";
		}
		
	}
	
//	Products CRUD
	
	@GetMapping("/add-product")
	public String addProduct(HttpServletRequest request)
	{
		if(adminUtil.isAdmin(request))
		{
			
			return "addProduct";
		}
		else
		{
			return"redirect:/index";
		}
	}
	
	@PostMapping("/addProduct")
	public String AddProduct(productEntity product,Model model)
	{
		product.setCreated_at(LocalDateTime.now());
		productService.addProduct(product);
		return "redirect:/admin/list?type=products";
	}

	@GetMapping("/delete")
	public String Delete(@RequestParam("Id") Integer Id,HttpServletRequest request)
	{
		if(adminUtil.isAdmin(request))
		{			
			productService.deleteProduct(Id);
			return"redirect:/admin/list?type=products";
		}
		else
		{
			return"redirect:/index";
		}
	}
	
	@GetMapping("/update")
	public String addProduct(@RequestParam("Id") Integer Id,Model model,HttpServletRequest request)
	{
		if(adminUtil.isAdmin(request))
		{				
			productEntity product = productService.getProductById(Id);
			model.addAttribute("product", product);
			return "updateProduct";
		}
		else
		{
			return"redirect:/index";
		}
	}
	
	@PostMapping("/update-product")
	public String updateProduct(productEntity product,Model model)
	{
		product.setUpdated_at(LocalDateTime.now());
		productService.updateProduct(product);
		return "redirect:/admin/list?type=products";
	}
	
	
//	Users CRUD
	
	@GetMapping("/delete-user")
	public String deleteUser(@RequestParam("id") Integer Id,HttpServletRequest request)
	{
		if(adminUtil.isAdmin(request))
		{				
			
			userRepo.deleteById(Id);
			return"redirect:/admin/list?type=users";
		}
		else
		{
			return"redirect:/index";
		}
	}
	
	@GetMapping("/update-user")
	public String updateUser(@RequestParam("id")Integer Id,Model model,HttpServletRequest request)
	{
		if(adminUtil.isAdmin(request))
		{				
			userEntity user = userRepo.findById(Id).orElse(null);
			model.addAttribute("user", user);
			return "updateUser";
		}
		else
		{
			return"redirect:/index";
		}
	}
	
	@PostMapping("/update-user")
	public String updateUser(userEntity user,RedirectAttributes redirectAttribute,Model model)
	{
		userEntity prevUser = userRepo.findById(user.getUserId()).orElse(null);
		if(user.getPassword()!=null && !user.getPassword().trim().isEmpty()) //password validation
		{
			BCryptPasswordEncoder Bcrypt = appConfig.passwordEncoder();
			String encryptedPwd = Bcrypt.encode(user.getPassword());
			prevUser.setPassword(encryptedPwd);
		}
		
		if(userValidation.isEmpty(user.getUsername()) || userValidation.isEmpty(user.getEmail())) //user validation
		{
			model.addAttribute("user",prevUser);
			model.addAttribute("emptyError","Username Or Email Can't be Empty..");
			
			return"updateUser";
		}
		else
		{	
			/* 
			 		Email == unique 		Password == unique  
			 		Email == unique 		password != unique
			 		Email != unique			password == unique
			 		Email != unique			password != unique
			 */	
			if(prevUser.getEmail() != user.getEmail() && prevUser.getUsername() != user.getUsername())
			{		
				prevUser.setUsername(user.getUsername());
				prevUser.setEmail(user.getEmail());
				prevUser.setRole(user.getRole());
				userRepo.save(prevUser);
				return"redirect:/admin/list?type=users";
			}
			else if(prevUser.getEmail() == user.getEmail() && prevUser.getUsername() != user.getUsername())
			{
				prevUser.setUsername(user.getUsername());
				prevUser.setRole(user.getRole());
				userRepo.save(prevUser);
				return"redirect:/admin/list?type=users";
			}
			else if(prevUser.getEmail() != user.getEmail() && prevUser.getUsername() == user.getUsername())
			{
				prevUser.setEmail(user.getEmail());
				prevUser.setRole(user.getRole());
				userRepo.save(prevUser);
				return"redirect:/admin/list?type=users";
			}

			else
			{
				prevUser.setRole(user.getRole());
				userRepo.save(prevUser);
				return"redirect:/admin/list?type=users";
			}
		}
	
	}
}

