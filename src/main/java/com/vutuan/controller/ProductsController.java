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
@RequestMapping("/products")
public class ProductsController {

	@Autowired
	CategoryService categoryservice;
	
	@Autowired
	BrandService brandservice;
	
	@Autowired
	ProductService productservice;
	
	
	
	@GetMapping("/{category_id}")
	public String Deafault(@PathVariable int category_id, ModelMap modelmap) {
		
		List<Category> dscategory = categoryservice.DanhSachCategory();
		modelmap.addAttribute("dscategory", dscategory);
		
		List<Brand> dsbrand = brandservice.DanhSachBrand();
		modelmap.addAttribute("dsbrand", dsbrand);
		
		List<Product> dsproducttuCategoryLimit = productservice.DanhSachProductTuLoaiLimit(1);
		modelmap.addAttribute("dsproducttuCategoryLimit", dsproducttuCategoryLimit);
		
		List<Product> dsproducttuCategory = productservice.DanhSachProductTuLoai(category_id);
		modelmap.addAttribute("dsproducttuCategory", dsproducttuCategory);
		
		
		return "products";
	}
}
