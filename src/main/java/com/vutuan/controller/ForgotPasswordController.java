package com.vutuan.controller;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.vutuan.entity.Users;

@Controller
@RequestMapping("/forgot-password")

public class ForgotPasswordController {
	
	@Autowired
	SessionFactory sessionfactory;
	
//	@Autowired
//	JavaMailSender maildender;
	
	@GetMapping
	public String Default() {
		
		return "forgot-password";
	}
	
	@PostMapping
	public String forgot(ModelMap modelmap,@ModelAttribute("users") Users users) {
		
		String user_email = users.getUser_email();
		Session session = sessionfactory.getCurrentSession();
		
		session.refresh(users);
		if(user_email.equals(users.getUser_email())) {
//			MimeMessage message = 
		}
		
		return "forgot-password";
	}

}
