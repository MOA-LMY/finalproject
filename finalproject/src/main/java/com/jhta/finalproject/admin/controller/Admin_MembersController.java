package com.jhta.finalproject.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jhta.finalproject.service.MembersService;

@Controller
public class Admin_MembersController {
	@Autowired private MembersService service;
	
	@RequestMapping(value = "/admin/members", method = RequestMethod.GET)
	public String goods_list(Model model) {
		model.addAttribute("list",service.list());
		return "/admin/members";
	}
}
