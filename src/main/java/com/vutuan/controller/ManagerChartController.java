package com.vutuan.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vutuan.entity.Category;
import com.vutuan.entity.Value;
import com.vutuan.service.CategoryService;
import com.vutuan.service.ProductService;

@Controller
@RequestMapping("/admin/manager-chart")
public class ManagerChartController {
	
	@Autowired
	ProductService productservice;
	
	@Autowired
	CategoryService categoryservice;
	
	@GetMapping
	public String Deafault(ModelMap modelmap) {
		
		ArrayList<Value> list = new ArrayList<>();
		
		for(Category category : categoryservice.DanhSachCategory()) {
			
			list.add(new Value(category.getCategory_name(),productservice.DanhSachProductTuLoai((int) category.getCategory_id()).size()));
			
		}
		
		
		modelmap.addAttribute("listItem", list);
		
		
		
		return "/admin/manager-chart";
	}

}
