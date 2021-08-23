package com.jhta.finalproject.admin.controller;


import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.jhta.finalproject.service.PetService;

@Controller
public class AdminPetListController {

	@Autowired private PetService service;
	
	@GetMapping("/petlist")
	public String list(Model model) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		model.addAttribute("list",service.list(map));
		return "lsh/adminpetlist";
	}
}
