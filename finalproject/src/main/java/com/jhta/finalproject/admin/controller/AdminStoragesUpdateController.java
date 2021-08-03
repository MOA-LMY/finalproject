package com.jhta.finalproject.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.jhta.finalproject.service.StoragesService;
import com.jhta.finalproject.vo.StoragesVo;

@Controller
public class AdminStoragesUpdateController {
	@Autowired private StoragesService service;
	
	@GetMapping("/storagesupdate")
	public String updateForm(int st_num,Model model) {
		StoragesVo vo=service.find(st_num);
		model.addAttribute("vo",vo);
		return "lsh/adminstoragesupdate";
	}
	@PostMapping("/storagesupdate")
	public String update(StoragesVo vo,Model model) {
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
