package com.jhta.finalproject.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.jhta.finalproject.service.StoragesService;

@Controller
public class AdminStoragesDeleteController {
	@Autowired private StoragesService service;
	
	@GetMapping("/storagesdelete")
	public String delete(int st_num) {
		service.delete(st_num);
		return "redirect:/storageslist";
	}
}
