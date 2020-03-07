package com.vutuan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vutuan.entity.Brand;
import com.vutuan.entity.Category;
import com.vutuan.entity.Product;
import com.vutuan.service.BrandService;
import com.vutuan.service.CategoryService;
import com.vutuan.service.ProductService;

@Controller
@RequestMapping("/admin/update-product")
public class UpdateProductController {
	
	@Autowired
	ProductService productservice;
	
	@Autowired
	BrandService brandservice;
	
	@Autowired
	CategoryService categoryservice;
	
	@GetMapping("/{product_id}")
	public String Deafault(@PathVariable int product_id, ModelMap modelmap) {
		
		Product product = productservice.ChiTietProduct(product_id);
		modelmap.addAttribute("product", product);
		
		List<Brand> dsbrand = brandservice.DanhSachBrand();
		modelmap.addAttribute("dsbrand", dsbrand);
		
		List<Category> dscategory = categoryservice.DanhSachCategory();
		modelmap.addAttribute("dscategory", dscategory);
		
		return "/admin/update-product";
	}

}
