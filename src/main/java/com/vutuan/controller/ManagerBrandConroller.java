package com.vutuan.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vutuan.entity.Brand;
import com.vutuan.service.BrandService;

@Controller
@RequestMapping("/admin/manager-brand")
public class ManagerBrandConroller {
	
	@Autowired
	BrandService brandservice;
	
	@GetMapping
	public String Deafault(ModelMap modelmap) {
		
		
		List<Brand> dsbrand =  brandservice.DanhSachBrand();
		modelmap.addAttribute("dsbrand", dsbrand);
		


		
		
		
		return "/admin/manager-brand";
	}

}
