package com.controller;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.configuration.AppConfiguration;
import com.dto.LoginDto;
import com.entity.userEntity;
import com.repository.OrderItemsRepository;
import com.repository.OrderRepository;
import com.repository.UserRepository;
import com.service.MailService;
import com.service.UserService;
import com.service.UserValidationService;
import com.util.CookieUtil;
import com.util.TokenUtil;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import com.utility.localDateTime;

@Controller
public class UserController {

	@Autowired
	UserRepository userRepo;
	
	 @Autowired
	 MailService mailService;
	 
	@Autowired
	OrderItemsRepository orderItemsRepo;
	
	@Autowired
	OrderRepository orderRepo;
	
	@Autowired
	UserValidationService userValidator;
	
	@Autowired
	AppConfiguration Bcryptencoder;
	
	@Autowired
	UserService userService;
	
	@Autowired
	AppConfiguration datetime;
	
	@Autowired 
	TokenUtil tokenUtil;
	

	@GetMapping("/signup")
	public String Signup()
	{
		return "signup";
	}
	
	@PostMapping("/signup")
	public String signup(userEntity user,Model model,RedirectAttributes redirectAttrbutes,HttpServletResponse response)
	{
		if(!userValidator.isEmpty(user.getUsername()) && !userValidator.isEmpty(user.getEmail()))
		{
			if(userValidator.isEmailUnique(user.getEmail()))
			{
				if(userValidator.isUsernameUnique(user.getUsername()))
				{
					BCryptPasswordEncoder encoder = Bcryptencoder.passwordEncoder();
					String epwd = encoder.encode(user.getPassword());	
					user.setPassword(epwd);
					user.setCreated_at(datetime.getCurrentTime());
				
					String token = tokenUtil.generateToken();
				    user.setToken(token);
				    user.setTokenCreatedOn(LocalDateTime.now());
				    user.setRole("USER");
				    userRepo.save(user);
				    CookieUtil.createCookie("token", token, response);
				    redirectAttrbutes.addFlashAttribute("successfull","Welcome "+user.getUsername()+"!");
				    mailService.sendMail(user.getEmail(), user.getUsername(), "Cara Signup Successfull", "Dear "+user.getUsername()+","+
		    				"\nWelcome to our platform!"
		    				+ "\n Your account has been successfully created. "
		    				+ "\n Thank you for being a part of our community."
		    				+ "\nRegards, Cara pvt. ltd.");
				    
					return "redirect:/index";
				}
				else
				{
					model.addAttribute("password",user.getPassword());
					model.addAttribute("email", user.getEmail());
					model.addAttribute("usernameError","Username not available...try a different one");
					return "signup";
				}
			}
			else
			{
				model.addAttribute("password",user.getPassword());
				model.addAttribute("username", user.getUsername());
				model.addAttribute("emailError","Please enter a valid email");
				return "signup";
			}	
		}
		else
		{
			model.addAttribute("password",user.getPassword());
			model.addAttribute("fieldNullError", "Username and Email is required.");
			return "signup";
		}
		
	}
	
	@GetMapping("/login")
	public String login()
	{
		return "Login";
	}
	
	@PostMapping("/login")
	public String login(userEntity user,HttpServletResponse response,RedirectAttributes redirectAttribute)
	{
		BCryptPasswordEncoder encoder = Bcryptencoder.passwordEncoder();
		
		if(userRepo.getByEmail(user.getEmail())!=null)//form email == user Email
		{
			userEntity user1 = userRepo.getByEmail(user.getEmail());
			if(encoder.matches(user.getPassword(),user1.getPassword()))
			{
				// inputed password == encrypted password?

//				String userId = user1.getUserId().toString();
//			    Cookie cookie = new Cookie("userId", userId);
//
//			    cookie.setMaxAge(24 * 60 * 60); // Cookie lasts for 1 day (adjust as needed)
//			    cookie.setPath("/"); // Cookie is accessible from all paths
				
			    user1.setLast_login(datetime.getCurrentTime());
			    if(tokenUtil.isTokenExpired(user1.getToken()))
			    {
			    	//Token Expiry Check of 24 hours
			    	
			    	user1.setToken(tokenUtil.generateToken());
			    	user1.setTokenCreatedOn(LocalDateTime.now());
			    }
			    CookieUtil.createCookie("token", user1.getToken(), response);
			    userRepo.save(user1);
			    mailService.sendMail(user1.getEmail(), user1.getUsername(), "Cara Login Notification", "Dear " + user1.getUsername() + ",\n\n"
		                + "You have successfully logged in to our system.\n\n"
		                + "Thank you for using our service.\n\n"
		                + "Regards,\n"
		                + "Cara");
			    redirectAttribute.addFlashAttribute("successfull", "Welcome "+user1.getUsername()+"!");
				return "redirect:/index";
			}
			else
			{
				redirectAttribute.addFlashAttribute("error","invalid password");
				return "redirect:/login";
			}	
		}
		else
		{
			String error = "invalid email...Try Again or Signup!";
			
			redirectAttribute.addFlashAttribute("error",error);
			return "redirect:/login";
		}
	}	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request,RedirectAttributes redirectAttribute)
	{
		String token = CookieUtil.getTokenFromCookie(request);
		Boolean isLogout = false;
		if(token == null || token.trim().length() == 0)
		{
			redirectAttribute.addFlashAttribute( "isLogout",isLogout);
			return "redirect:/index";
		}
		userEntity user = userRepo.getByToken(token);
		if(user == null)
		{
			redirectAttribute.addFlashAttribute( "isLogout",isLogout);
			return "redirect:/index";
		}

		userRepo.delete(user);
		
		isLogout = true;
		redirectAttribute.addFlashAttribute("isLogout",isLogout);
		return "redirect:/index";
	}
	
	@GetMapping("/forget-password")
	public String forgetPassword()
	{
		return "forgetPassword";
	}
	
	@PostMapping("/update-password")
	public String updatePassword(HttpServletRequest request,userEntity user,RedirectAttributes redirectAttribute)
	{
		if(userRepo.existsByEmail(user.getEmail()))
		{			
			userEntity userEntity = userRepo.getByEmail(user.getEmail());
			if(userEntity.getToken().equals(CookieUtil.getTokenFromCookie(request)))
			{
					BCryptPasswordEncoder encoder = Bcryptencoder.passwordEncoder();
					String epwd = encoder.encode(user.getPassword());
					userEntity.setPassword(epwd);
					userRepo.save(userEntity);
					System.out.println("entered token check...!!");
					return"redirect:/login";
			}
			else
			{
				redirectAttribute.addFlashAttribute("invalidToken", "Enter your registered email");
				return"redirect:/forget-password";
			}
		}
		else
		{
			redirectAttribute.addFlashAttribute("invalidEmail", "Invalid email");
			return "redirect:/forget-password";
		}
	}
	@GetMapping("/adminLogin")
	public String adminLoginView()
	{
		return "adminLogin";
	}
	
	@PostMapping("/updateRole")
	public String adminRoleUpdate(LoginDto loginDto,RedirectAttributes redirectAttributes)
	{
		if(loginDto.getPassword().equals("admin@123"))
		{
			userEntity user = userRepo.getByEmail(loginDto.getEmail());
			user.setRole("ADMIN");
			userRepo.save(user);
			return"redirect:/admin/admin-dashboard";
		}
		else	
		{
			redirectAttributes.addFlashAttribute("error","Access Denied");
			return "redirect:/adminLogin";
		}
	}
}
