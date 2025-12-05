package com.util;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CookieUtil {
	
	  public static Integer getUserIdFromCookie(HttpServletRequest request) {
	        Cookie[] cookies = request.getCookies();
	        if (cookies != null) {
	            for (Cookie cookie : cookies) {
	                if ("userId".equals(cookie.getName())) {
//	                	System.out.println(cookie.getValue());
	                    return Integer.parseInt(cookie.getValue());
	                }
	            }
	        }
	        return null;
	    }
	  
	  public static String getTokenFromCookie(HttpServletRequest request) {
	        Cookie[] cookies = request.getCookies();
	        if (cookies != null) {
	            for (Cookie cookie : cookies) {
	                if ("token".equals(cookie.getName())) {
//	                	System.out.println(cookie.getValue());
	                    return cookie.getValue();
	                }
	            }
	        }
	        return null;
	    }
	  
	  public static Cookie getCookie(HttpServletRequest request) {
	        Cookie[] cookies = request.getCookies();
	        if (cookies != null) {
	            for (Cookie cookie : cookies) {
	                if ("userId".equals(cookie.getName())) {
//	                	System.out.println(cookie.getValue());
	                    return cookie;
	                }
	            }
	        }
	        return null;
	    }
	 
	  public static void createCookie(String name,String data,HttpServletResponse response)
	  {
		  Cookie cookie =new Cookie(name,data);
		  cookie.setMaxAge(24*60*60*15);
		  cookie.setPath("/");
		  response.addCookie(cookie);
	  }
}
