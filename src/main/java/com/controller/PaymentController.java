package com.controller;


import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.stripe.model.checkout.Session;
import com.stripe.param.checkout.SessionCreateParams;

@Controller
public class PaymentController {

	
//	    // This is your test secret API key.
//	    @Value("${stripe.api.secretKey}")
//	    private String secretkey;
//	
//	    @PostMapping("/create-checkout-session")
//	    public String createCheckoutSession(HttpServletResponse response)
//	    {
//	    	
//	    	String DOMAIN = "http://localhost:9999";
//	    	SessionCreateParams params =
//	    			SessionCreateParams.builder()
//	    			.setMode(SessionCreateParams.Mode.PAYMENT)
//	    			.setSuccessUrl(DOMAIN + "/success.html")
//	    			.setCancelUrl(DOMAIN + "/cancel.html")
//	    			.addLineItem(
//	    					SessionCreateParams.LineItem.builder()
//	    					.setQuantity(1L)
//	    					
//	    					// Provide the exact Price ID (for example, pr_1234) of the product you want to sell
//	    					.setPrice("{{PRICE_ID}}")
//	    					.build())
//	    			
//
//	    			.build();
//	    	Session session = Session.create(params);
//	    	
//	    	response.sendRedirect(session.getUrl());
//	    	return "few";
//	    };
//	    
	    
}
