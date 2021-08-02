package com.jhta.finalproject.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminPetController {
	@RequestMapping("/lsh/adminpet")
	public String adminpet() {
		return "lsh/adminpet";
	}
}
