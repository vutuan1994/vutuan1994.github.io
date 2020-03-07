package com.vutuan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/thankyou")
public class ThankYouController {
	
	@GetMapping
	public String Deafault() {
		
		return "thankyou";
	}

}
