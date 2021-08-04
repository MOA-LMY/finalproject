package com.jhta.finalproject.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {
	@GetMapping("/login/login")
	public String loginForm() {
		return "/login/login";
	}
	@GetMapping("/login/naverCallback")
	public String naverCallback() {
		System.out.println("hi");
		return "/login/naverCallback";
	}
	@GetMapping("/login/login2")
	public String loginForm2(String email, String name,String gender,String birthday,String birthyear,String mobile) {
		  System.out.println(email);
          System.out.println(name);
          System.out.println(gender);
          System.out.println(birthday);
          System.out.println(birthyear);
          System.out.println(mobile);
		return "/login/login";
	}
	@PostMapping("/login/join")
	public String joinform() {
		return "/login/join";
	}
	
}
