package com.vutuan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vutuan.entity.Users;
import com.vutuan.service.UsersService;

@Controller
@RequestMapping("/admin/manager-user")
public class ManagerUserController {
	
	@Autowired
	UsersService userservice;
	
	@GetMapping
	public String Deafault(ModelMap modelmap) {
		
		List<Users> dsusers = userservice.dsusers();
		modelmap.addAttribute("dsusers", dsusers);
		
		return "/admin/manager-user";
	}

}
