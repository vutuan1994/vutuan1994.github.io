package com.vutuan.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.vutuan.entity.GioHang;
import com.vutuan.entity.Users;


@Controller
@RequestMapping("/checkout")
@SessionAttributes("users")
public class CheckoutController {
	
	@GetMapping
	public String Deafalt(ModelMap modelmap,HttpSession httpsession) {
		

		if(null != httpsession.getAttribute("giohang")) {

		List<GioHang> giohangs = (List<GioHang>) httpsession.getAttribute("giohang");
		modelmap.addAttribute("soluongsanphamgiohang", giohangs.size());
		modelmap.addAttribute("giohang", giohangs);
		
		}
		
		return "checkout";
	}
}
