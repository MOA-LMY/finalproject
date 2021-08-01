package com.jhta.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	@GetMapping("/login/login")
	public String loginForm() {
		return "/login/login";
	}
}
