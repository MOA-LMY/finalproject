package com.jhta.finalproject.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Admin_IndexController {
	@RequestMapping(value = "/admin/", method = RequestMethod.GET)
	public String index() {
		return "/admin/index";
	}
}
