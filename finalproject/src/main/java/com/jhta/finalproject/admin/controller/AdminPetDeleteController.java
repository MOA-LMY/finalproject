package com.jhta.finalproject.admin.controller;

import java.io.File;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.finalproject.service.PetService;
import com.jhta.finalproject.vo.PetVo;

@Controller
public class AdminPetDeleteController {
	@Autowired private PetService service;
	@Autowired private ServletContext sc;
	
	@RequestMapping("/petdelete")
	public String delete(int pet_num,Model model) {
		PetVo vo=service.find(pet_num);
		try {
			String filename=vo.getPet_saveimg();
			String dir=sc.getRealPath("/resources/img/pet");
			File f=new File(dir + "\\" + filename);
			if(f.exists()) {
				f.delete();
			}
			service.delete(pet_num);
			return "redirect:/petlist";
		}catch(Exception e) {
			model.addAttribute("code","fail");
			e.printStackTrace();
			return "test/hyuntest";
		}
	}
}
