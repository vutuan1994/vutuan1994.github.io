package com.vutuan.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/thankyoudelivery")

public class ThankYouDeliveryController {
	
	
	
	@GetMapping
	public String Deafault() {
		

		
		return "thankyoudelivery";
	}

}
