package com.vutuan.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.vutuan.entity.Bill;
import com.vutuan.entity.Brand;
import com.vutuan.entity.Category;
import com.vutuan.entity.GioHang;
import com.vutuan.entity.Product;
import com.vutuan.entity.Users;
import com.vutuan.service.BillService;
import com.vutuan.service.BrandService;
import com.vutuan.service.CategoryService;
import com.vutuan.service.ProductService;

@Controller
@RequestMapping("/")

public class TrangChuController {
	
	@Autowired
	BrandService brandservice;
	
	@Autowired
	CategoryService categoryservice;
	
	@Autowired
	ProductService productservice;
	
	@Autowired
	BillService billservice;
	
	@GetMapping
	public String Deafaul(ModelMap modelmap, HttpSession httpsession) {
		
//		if(null != httpsession.getAttribute("dsusers")) {
//			List<Users> dsusers = (List<Users>) httpsession.getAttribute("dsusers");
//
//			modelmap.addAttribute("dsusers", dsusers);
//		}
		
		if(null != httpsession.getAttribute("giohang")) {
			List<GioHang> giohangs = (List<GioHang>) httpsession.getAttribute("giohang");
			modelmap.addAttribute("soluongsanphamgiohang", giohangs.size());
			modelmap.addAttribute("giohang", giohangs);
		}
		
		List<Brand> dsbrand = brandservice.DanhSachBrand();
		modelmap.addAttribute("dsbrand", dsbrand);
		
		List<Category> dscategory = categoryservice.DanhSachCategory();
		modelmap.addAttribute("dscategory", dscategory);
		
		List<Product> dsproductMoiNhat = productservice.ProductMoiNhat(5);
		modelmap.addAttribute("dsproductMoiNhat", dsproductMoiNhat);
		
		List<Product> dsproducttuCategory = productservice.DanhSachProductTuLoai(4);
		modelmap.addAttribute("dsproducttuCategory", dsproducttuCategory);
		
		List<Product> dsproducttuCategoryLimit = productservice.DanhSachProductTuLoaiLimit(1);
		modelmap.addAttribute("dsproducttuCategoryLimit", dsproducttuCategoryLimit);
		
		List<Product> dsproducttuCategoryLimit1 = productservice.DanhSachProductTuLoai(6);
		modelmap.addAttribute("dsproducttuCategoryLimit1", dsproducttuCategoryLimit1);
		

		
		return "index";
	}

}
