package com.vutuan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vutuan.entity.Brand;
import com.vutuan.entity.Category;
import com.vutuan.service.BrandService;
import com.vutuan.service.CategoryService;

@Controller
@RequestMapping("/admin/insert-product")
public class InsertProductController {
	
	@Autowired
	BrandService brandservice;
	
	@Autowired
	CategoryService categoryservice;
	
	@GetMapping
	public String Default(ModelMap modelmap) {
		
		List<Brand> dsbrand = brandservice.DanhSachBrand();
		modelmap.addAttribute("dsbrand", dsbrand);
		
		List<Category> dscategory = categoryservice.DanhSachCategory();
		modelmap.addAttribute("dscategory", dscategory);
		
		
		return "/admin/insert-product";
	}

}
