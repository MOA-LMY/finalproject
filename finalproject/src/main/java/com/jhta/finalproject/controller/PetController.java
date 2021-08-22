package com.jhta.finalproject.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.jhta.finalproject.page.PageUtil;
import com.jhta.finalproject.service.PetService;
import com.jhta.finalproject.vo.PetVo;

@Controller
public class PetController {
	@Autowired PetService petService;
	@GetMapping("/pet/petlist")
	public String petList(Model model,String spageNum) {
		int pageNum=1;
		if(spageNum!=null) {
			pageNum = Integer.parseInt(spageNum);
		}
		HashMap<String, Object> map = new HashMap<String, Object>();
		PageUtil pu = new PageUtil(pageNum, 8, 5, petService.countAll());
		model.addAttribute("pu",pu);
		map.put("startRow", pu.getStartRow());
		map.put("endRow", pu.getEndRow());
		List<PetVo> petlist = petService.list(map);
		model.addAttribute("petlist", petlist);
		return "/pet/petlist";
	}
}
