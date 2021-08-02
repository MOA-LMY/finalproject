package com.jhta.finalproject.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Admin_PartnersController {
	@RequestMapping(value = "/admin/partners", method = RequestMethod.GET)
	public String members() {
		return "/admin/partners";
	}
}
