package com.vutuan.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/trangchu")
public class TrangChuAdminController {

	@GetMapping
	public String Deafault(HttpServletResponse response, HttpSession httpsession) {
		
		if(null == httpsession.getAttribute("user_ad_email")) {
			try {
				response.sendRedirect("/MusicWeb/admin/login");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		return "/admin/trangchu";
	}
}
