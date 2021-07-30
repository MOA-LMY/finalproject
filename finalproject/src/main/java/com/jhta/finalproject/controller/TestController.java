package com.jhta.finalproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.vo.GoodsVo;

@Controller
public class TestController {
	@Autowired private GoodsService service; 
	
	@RequestMapping("/goodtest")
	public String list(Model model) {
		
		try {
			
			List<GoodsVo> list = service.list(); 
			int tot = list.size();
			model.addAttribute("tot", tot);
			model.addAttribute("code", "success");
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
			model.addAttribute("code", "fail");
		}
		
		return "test/wontest";
	}
}
