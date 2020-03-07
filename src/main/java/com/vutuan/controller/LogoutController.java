package com.vutuan.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/logout")
public class LogoutController {

	@GetMapping
	public void Deafault(HttpServletResponse response, HttpSession httpsession) {
		
		httpsession.removeAttribute("users");
		
		try {
			response.sendRedirect("/MusicWeb/login");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
