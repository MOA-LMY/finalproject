package com.jhta.finalproject.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.jhta.finalproject.service.MembersService;
import com.jhta.finalproject.vo.MembersVo;

@Controller
public class LoginController {
	@Autowired MembersService membersService;
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
	@GetMapping("/login/join")
	public String joinform() {
		return "/login/join";
	}
	@GetMapping("/sec/members")
	public String sec(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = auth.getName();
		System.out.println(id);
		model.addAttribute("id", id);
		return "/test/sec";
	}
	@PostMapping("/login/join")
	public String join(MembersVo vo) {
		System.out.println("loginController" +vo);
		try {
			int n = membersService.insert(vo);
			return "redirect:/";
		}catch(Exception e){
			e.printStackTrace();
			return "/login/result";
		}
	}
}
