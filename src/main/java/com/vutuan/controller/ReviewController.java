package com.vutuan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vutuan.entity.Product;
import com.vutuan.entity.Review;
import com.vutuan.service.ProductService;
import com.vutuan.service.ReviewService;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	
	@Autowired
	ProductService productservice;
	
	@GetMapping("/{product_id}")
	public String Deafault(@PathVariable int product_id, ModelMap modelmap) {
		
		Product chitietproduct = productservice.ChiTietProduct(product_id);
		modelmap.addAttribute("chitietproduct", chitietproduct);
		
		return "review";
		
	}
	


}
