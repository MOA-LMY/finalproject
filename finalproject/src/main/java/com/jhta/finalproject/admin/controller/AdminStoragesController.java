package com.jhta.finalproject.admin.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminStoragesController {
	@RequestMapping("/lsh/adminstorages")
	public String adminstorages() {
		return "lsh/adminstorages";
	}
}
