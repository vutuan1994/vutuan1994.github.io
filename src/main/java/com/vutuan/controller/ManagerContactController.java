package com.vutuan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vutuan.entity.Contact;
import com.vutuan.service.ContactService;

@Controller
@RequestMapping("/admin/manager-contact")
public class ManagerContactController {
	
	@Autowired
	ContactService contactservice;
	
	@GetMapping
	public String Deafault(ModelMap modelmap) {
		
		List<Contact> dsContact = contactservice.dsContact();
		modelmap.addAttribute("dsContact", dsContact);
		
		return "/admin/manager-contact";
	}

}
