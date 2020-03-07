package com.vutuan.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.vutuan.entity.Users;
import com.vutuan.service.UsersService;

@Controller
@RequestMapping("/navigate")
@SessionAttributes("user_name")
public class NavigateController {
	
	@Autowired
	UsersService usersservice;

			@GetMapping
			public String Deafault(HttpSession httpsession,HttpServletResponse response,ModelMap modelmap) {
				
				if (null == httpsession.getAttribute("users")) {
					try {
						response.sendRedirect("login");
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					return "login";
				
			
			}
				
			
			return "navigate";

		

	}	
	
}
