package com.vutuan.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.vutuan.entity.GioHang;

@Controller
@RequestMapping("/deal")
@SessionAttributes({"user_name","giohang"})
public class DealController {

	@GetMapping
	public String Deafault(HttpServletResponse response, HttpSession httpsession, ModelMap modelmap) {
		if(null != httpsession.getAttribute("giohang")) {
			List<GioHang> giohangs = (List<GioHang>) httpsession.getAttribute("giohang");
			modelmap.addAttribute("soluongsanphamgiohang", giohangs.size());
			modelmap.addAttribute("giohang", giohangs);

		}		
		
		if(null == httpsession.getAttribute("users")) {
			try {
				response.sendRedirect("/login");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "login";
		}
		
		return "deal";
	}
	

	
}
