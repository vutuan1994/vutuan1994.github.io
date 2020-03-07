package com.vutuan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vutuan.entity.Brand;
import com.vutuan.service.BrandService;

@Controller
@RequestMapping("/admin/update-brand")
public class UpdateBrandController {
	
	@Autowired
	BrandService brandservice;
	
	
	@GetMapping("/{brand_id}")
	public String Deafault(@PathVariable long brand_id, ModelMap modelmap) {
		
		Brand brandtheoid = brandservice.BrandTheoid(brand_id);
		modelmap.addAttribute("brandtheoid", brandtheoid);
		
		return "/admin/update-brand";
	}

}
