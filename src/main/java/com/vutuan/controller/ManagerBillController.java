package com.vutuan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vutuan.entity.Bill;
import com.vutuan.service.BillService;

@Controller
@RequestMapping("/admin/manager-bill")
public class ManagerBillController {
	
	@Autowired
	BillService billservice;
	
	@GetMapping
	public String Deafault(ModelMap modelmap) {
		
		List<Bill> dsBill = billservice.dsBill();
		modelmap.addAttribute("dsBill", dsBill);
		
		return "/admin/manager-bill";
	}

}
