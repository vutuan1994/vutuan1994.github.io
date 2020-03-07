package com.vutuan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vutuan.entity.Brand;
import com.vutuan.entity.Category;
import com.vutuan.entity.Product;
import com.vutuan.entity.Review;
import com.vutuan.service.BrandService;
import com.vutuan.service.CategoryService;
import com.vutuan.service.ProductService;
import com.vutuan.service.ReviewService;

@Controller
@RequestMapping("/single")
public class SingleController {
	
	@Autowired
	ProductService productservice;
	
	@Autowired
	CategoryService categoryservice;
	
	@Autowired 
	ReviewService reviewservice;
	


	@GetMapping("/{product_id}/{category_id}")
	public String Deafault(@PathVariable int product_id, ModelMap modelmap,@PathVariable int category_id) {
	
		
		
		List<Category> dscategory = categoryservice.DanhSachCategory();
		modelmap.addAttribute("dscategory", dscategory);
		
		List<Product> dsproducttuCategoryLimit = productservice.DanhSachProductTuLoai(1);
		modelmap.addAttribute("dsproducttuCategoryLimit", dsproducttuCategoryLimit);
		
		List<Review> dsReview = reviewservice.dsReview(product_id);
		modelmap.addAttribute("dsReview", dsReview);
		
		Product chitietproduct = productservice.ChiTietProduct(product_id);
		modelmap.addAttribute("chitietproduct", chitietproduct);
		
		List<Product> dsproductlienquan = productservice.DanhSachProductLienQuan(category_id, product_id);
		modelmap.addAttribute("dsproductlienquan", dsproductlienquan);
		
		
		
		return "single";
		
	}
	

	
}

