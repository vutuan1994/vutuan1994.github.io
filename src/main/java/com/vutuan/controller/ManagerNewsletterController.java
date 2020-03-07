package com.vutuan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vutuan.entity.Newsletter;
import com.vutuan.service.NewSletterService;

@Controller
@RequestMapping("/admin/manager-newsletter")
public class ManagerNewsletterController {
	
	@Autowired
	NewSletterService newsletterservice;
	
	@GetMapping
	public String Deaufalt(ModelMap modelmap) {
		
		List<Newsletter> dsnewsletter = newsletterservice.dsnewsletter();
		modelmap.addAttribute("dsnewsletter", dsnewsletter);
		
		return "/admin/manager-newsletter";
	}

}
