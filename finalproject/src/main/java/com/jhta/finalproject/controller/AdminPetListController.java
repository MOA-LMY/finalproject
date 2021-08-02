package com.jhta.finalproject.controller;

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
		model.addAttribute("list",service.list());
		return "lsh/adminpetlist";
	}
}
