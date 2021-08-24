package com.jhta.finalproject.controller;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.javassist.compiler.ast.Keyword;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
	public String petList(Model model,String spageNum,String keyword,String field) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = auth.getName();
		System.out.println(id);

		int pageNum=1;
		if(spageNum!=null) {
			pageNum = Integer.parseInt(spageNum);
		}
		System.out.println("keyword :" + keyword);
		System.out.println("field :" +field);
		HashMap<String, Object> map = new HashMap<String, Object>();
		if(keyword!=null&&field!=null) {
			if(field.equals("pet_type")) {
				if(keyword.equals("개")||keyword.equals("강아지")) {
					model.addAttribute("keyword", keyword);
					keyword = "dog";
				}else {
					model.addAttribute("keyword", keyword);
				}
			}else {
				model.addAttribute("keyword", keyword);
			}	
		}
		map.put("keyword", keyword);
		map.put("field",field);
		model.addAttribute("field",field);
		
		PageUtil pu = new PageUtil(pageNum, 8, 5, petService.countAll(map));
		model.addAttribute("pu",pu);
		map.put("startRow", pu.getStartRow());
		map.put("endRow", pu.getEndRow());
		List<PetVo> petlist = petService.list(map);
		model.addAttribute("petlist", petlist);
		model.addAttribute("id",id);
		return "/pet/petlist";
	}
}
