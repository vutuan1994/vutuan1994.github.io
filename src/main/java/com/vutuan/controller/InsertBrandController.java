package com.vutuan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/insert-brand")
public class InsertBrandController {
	
	@GetMapping
	public String Deafault() {
		
		return "/admin/insert-brand";
	}

}
