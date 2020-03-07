package com.vutuan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vutuan.entity.Product;
import com.vutuan.service.ProductService;

@Controller
@RequestMapping("/admin/manager-product")
public class ManagerProductController {
	
	@Autowired
	ProductService productservice;
	
	@GetMapping
	public String Deafault(ModelMap modelmap) {
		
		List<Product> dsproduct = productservice.DanhSachProduct();
		modelmap.addAttribute("dsproduct", dsproduct);
		
		
		return "/admin/manager-product";
	}

}
