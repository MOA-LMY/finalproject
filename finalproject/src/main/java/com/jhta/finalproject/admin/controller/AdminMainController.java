package com.jhta.finalproject.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMainController {
	
	@GetMapping("/lsh/adminmain")
	public String adminmain() {
		return "lsh/adminmain";
	}
}
