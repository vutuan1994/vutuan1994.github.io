package com.vutuan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/insert-category")
public class InsertCategoryController {
	
	@GetMapping
	public String Deafault() {
		
		return "/admin/insert-category";
	}

}
