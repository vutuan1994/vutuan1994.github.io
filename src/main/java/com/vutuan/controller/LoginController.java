package com.vutuan.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.vutuan.service.UsersService;

@Controller
@RequestMapping("/login")

public class LoginController {

	@Autowired
	UsersService usersservice;
	
	@GetMapping
	public String Deafault(HttpSession httpsession, HttpServletResponse response) {
		
		if(null != httpsession.getAttribute("users")) {
			if(null != httpsession.getAttribute("giohang")) {
				try {
					response.sendRedirect("/MusicWeb/deal");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return "deal";
			}
			try {
				response.sendRedirect("/MusicWeb");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "index";
		}
		
		
		return "login";
	}
	

	
}
