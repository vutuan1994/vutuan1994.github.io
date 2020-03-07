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
@RequestMapping("/guitar")
public class GuitarController {
	
	@Autowired
	ProductService productservice;
	
	@GetMapping
	public String Deafault(ModelMap modelmap) {
		
		List<Product> dsproducttuCategory = productservice.DanhSachProductTuLoai(1);
		modelmap.addAttribute("dsproducttuCategory", dsproducttuCategory);
		
		List<Product> dsproducttuCategory1 = productservice.DanhSachProductTuLoai(2);
		modelmap.addAttribute("dsproducttuCategory1", dsproducttuCategory1);
		
		List<Product> dsproducttuCategory2 = productservice.DanhSachProductTuLoai(3);
		modelmap.addAttribute("dsproducttuCategory2", dsproducttuCategory2);
		
		List<Product> dsproducttuCategory3 = productservice.DanhSachProductTuLoai(4);
		modelmap.addAttribute("dsproducttuCategory3", dsproducttuCategory3);
		
		List<Product> dsproducttuCategory4 = productservice.DanhSachProductTuLoai(5);
		modelmap.addAttribute("dsproducttuCategory4", dsproducttuCategory4);
		
		return "guitar";
	}

}
