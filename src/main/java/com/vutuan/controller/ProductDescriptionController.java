package com.vutuan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vutuan.entity.Product;
import com.vutuan.service.ProductService;

@Controller
@RequestMapping("/admin/product-description")
public class ProductDescriptionController {
	
	@Autowired
	ProductService productservice;
	
	@GetMapping("/{product_id}")
	public String Deafault(@PathVariable int product_id, ModelMap modelmap) {
		
		Product product = productservice.ChiTietProduct(product_id);
		modelmap.addAttribute("product", product);
		
		return "/admin/product-description";
	}

}
