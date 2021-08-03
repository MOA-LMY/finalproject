package com.jhta.finalproject.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.jhta.finalproject.service.MembersService;
import com.jhta.finalproject.vo.MembersVo;

@Controller
public class AdminMembersUpdateController {
	@Autowired private MembersService service;
	
	@GetMapping("/membersupdate")
	public String updateForm(String m_id,Model model) {
		MembersVo vo=service.find(m_id);
		model.addAttribute("vo",vo);
		return "lsh/adminmembersupdate";
	}
	
	@PostMapping("/membersupdate")
	public String update(MembersVo vo,Model model) {
		try {
			service.update(vo);
			model.addAttribute("code","success");
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("code","fail");
		}
		return "test/hyuntest";
	}
}
