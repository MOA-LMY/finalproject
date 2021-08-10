package com.jhta.finalproject.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jhta.finalproject.service.PartnersService;

@Controller
public class Admin_PartnersController {
	@Autowired private PartnersService service;
	
	@RequestMapping(value = "/admin/partners", method = RequestMethod.GET)
	public String members(Model model) {
		model.addAttribute("list",service.list());
		return "/admin/partners";
	}
}
