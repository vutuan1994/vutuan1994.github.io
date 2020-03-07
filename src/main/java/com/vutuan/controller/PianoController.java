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
@RequestMapping("/piano")
public class PianoController {

	@Autowired
	ProductService productservice;
	
	@GetMapping
	public String Deafault(ModelMap modelmap) {
		
		List<Product> dsproducttuCategory = productservice.DanhSachProductTuLoai(6);
		modelmap.addAttribute("dsproducttuCategory", dsproducttuCategory);
		
		List<Product> dsproducttuCategory1 = productservice.DanhSachProductTuLoai(7);
		modelmap.addAttribute("dsproducttuCategory1", dsproducttuCategory1);
		
		return "piano";
	}
}
