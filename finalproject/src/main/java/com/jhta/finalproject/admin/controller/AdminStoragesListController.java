package com.jhta.finalproject.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.jhta.finalproject.service.StoragesService;

@Controller
public class AdminStoragesListController {

	@Autowired private StoragesService service;
	
	@GetMapping("/storageslist")
	public String list(Model model) {
		model.addAttribute("list",service.list());
		return "lsh/adminstorageslist";
	}
}
