package com.vutuan.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.vutuan.entity.GioHang;

@Controller
@RequestMapping("/checkoutstep")
public class CheckOutStepController {

	@GetMapping
	public String Deafault(HttpSession httpsession, HttpServletResponse response, ModelMap modelmap) {

		
		if(null != httpsession.getAttribute("users")) {
			try {
				response.sendRedirect("/MusicWeb/deal");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "deal";
		}
			return "checkoutstep";
		

		
		
	}
}
