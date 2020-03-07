package com.vutuan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vutuan.entity.Product;
import com.vutuan.service.ProductService;

@Controller
@RequestMapping("/search")
public class SearchController {
	
	@Autowired
	ProductService productservice;
	
	@GetMapping
	public String Default(@RequestParam String product_name, ModelMap modelmap) {
		
		List<Product> timkiemproduct = productservice.TimKiemProduct(product_name);
		
		if(timkiemproduct!= null) {
			modelmap.addAttribute("timkiemproduct", timkiemproduct);
		}else {
			modelmap.addAttribute("ketqua", "Không có sản phẩm bạn đang tìm!");
		}
		
		
		
		return "search";
	}

}
