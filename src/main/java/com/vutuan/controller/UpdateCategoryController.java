package com.vutuan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vutuan.entity.Category;
import com.vutuan.service.CategoryService;

@Controller
@RequestMapping("/admin/update-category")
public class UpdateCategoryController {
	
	@Autowired
	CategoryService categoryservice;
	
	@GetMapping("/{category_id}")
	public String Deafaul(@PathVariable long category_id, ModelMap modelmap) {
		
		Category category = categoryservice.CategoryTheoID(category_id);
		modelmap.addAttribute("category", category);
		
		return "/admin/update-category";
	}

}
