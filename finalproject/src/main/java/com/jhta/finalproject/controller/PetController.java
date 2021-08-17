package com.jhta.finalproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.jhta.finalproject.service.PetService;
import com.jhta.finalproject.vo.PetVo;

@Controller
public class PetController {
	@Autowired PetService petService;
	@GetMapping("/pet/petlist")
	public String petList(Model model) {
		List<PetVo> petlist = petService.list();
		model.addAttribute("petlist", petlist);
		return "/pet/petlist";
	}
}
