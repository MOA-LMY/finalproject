package com.jhta.finalproject.controller;



import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.jhta.finalproject.service.MembersService;
import com.jhta.finalproject.service.PartnersService;
import com.jhta.finalproject.vo.MembersVo;

@Controller
public class LoginController {
	@Autowired MembersService membersService;
	@Autowired PartnersService partnersService;
	@GetMapping("/login/login")	
	public String loginForm(String fail,Model model) {
		if(fail!=null) {
			model.addAttribute("fail", fail);
		}
		return "/login/login";
	}
	@GetMapping("/login/naverCallback")
	public String naverCallback() {
		System.out.println("hi");
		return "/login/naverCallback";
	}
	@GetMapping("/login/join2")
	public String loginForm2(String email, String name,String gender,String birthday,String birthyear,String mobile,Model model) {
          model.addAttribute("email",email);
          model.addAttribute("name",name);
          model.addAttribute("gender",gender);
          model.addAttribute("birthyear", birthyear);
          model.addAttribute("birthday",birthday);
          model.addAttribute("phone",mobile);
          System.out.println(mobile);
		return "/login/join";
	}
	@GetMapping("/login/join3")
	public String loginForm3(String email, String name,String gender,Model model) {
          model.addAttribute("email",email);
          model.addAttribute("name",name);
          model.addAttribute("gender",gender);
         
		return "/login/join";
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
	@GetMapping("/login/searchId")
	public String idpwdForm() {
		return "/login/searchId";
	}
	@GetMapping("/login/searchPwd")
	public String idpwdForm2() {
		return "/login/searchPwd";
	}
	@PostMapping("/login/changePwd")
	public String changePwd(String id, String password,Model model) {
		HashMap<String, String> map = new HashMap<String, String>();
		int n =membersService.isMember(id);
		map.put("id", id);
		map.put("pwd", password);
		if(n>0) {
			membersService.changePwd(map);
		}else {
			partnersService.changePwd(map);
		}
		model.addAttribute("changePwd", "changePwd");
		return "login/login";
	}
}
