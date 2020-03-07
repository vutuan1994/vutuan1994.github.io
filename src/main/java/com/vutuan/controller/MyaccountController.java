package com.vutuan.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vutuan.entity.Bill;
import com.vutuan.service.BillService;
import com.vutuan.service.UsersService;

@Controller
@RequestMapping("/myaccount")
public class MyaccountController {
	
	@Autowired
	UsersService usersservice;
	
	@Autowired
	BillService billservice;
	
	@GetMapping("/{user_id}")
	public String Deafault(@PathVariable long user_id, ModelMap modelmap, HttpServletResponse response, HttpSession httpsession) {
		
		if(null == httpsession.getAttribute("users")) {
			try {
				response.sendRedirect("/MusicWeb/login");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "login";
		}
		
		List<Bill> dsbill = billservice.dsBilltheouser(user_id);
		modelmap.addAttribute("dsbill", dsbill);
		
		return "myaccount";
	}
	

}
