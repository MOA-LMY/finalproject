package com.jhta.finalproject.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminGoodsController {
	
	@RequestMapping("/lsh/admingoods")
	public String admingoods() {
		return "lsh/admingoods";
	}
}
