package com.vutuan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/delivery")
@SessionAttributes("tongsotien" )

public class DeliveryController {

	@GetMapping
	public String Deafault() {
		
		
		return "delivery";
	}
}
