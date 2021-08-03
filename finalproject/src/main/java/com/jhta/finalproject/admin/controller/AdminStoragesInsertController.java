package com.jhta.finalproject.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.jhta.finalproject.service.StoragesService;
import com.jhta.finalproject.vo.StoragesVo;



@Controller
public class AdminStoragesInsertController {
	@Autowired private StoragesService service;
	
	@GetMapping("/storagesinsert")
	public String insertForm() {
		return "lsh/adminstoragesinsert";
	}
	
	@PostMapping("/storagesinsert")
	public String insert(StoragesVo vo,Model model) {
		try {
			service.insert(vo);
			model.addAttribute("code","success");
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("code","fail");
		}
		return "test/hyuntest";
	}
}
