package com.vutuan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vutuan.entity.Category;
import com.vutuan.service.CategoryService;

@Controller
@RequestMapping("/admin/manager-category")
public class ManagerCategoryController {
	
	@Autowired
	CategoryService categoryservice;
	
	@GetMapping
	public String Deafault(ModelMap modelmap) {
		
		List<Category> dscategory = categoryservice.DanhSachCategory();
		modelmap.addAttribute("dscategory", dscategory);
		
		
		return "/admin/manager-category";
	}

}
