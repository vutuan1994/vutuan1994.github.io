package com.vutuan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/logindeal")
public class LoginDealController {

	@GetMapping
	public String Deafault() {
		
		return "logindeal";
	}
}
