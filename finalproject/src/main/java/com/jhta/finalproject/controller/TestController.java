package com.jhta.finalproject.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.vo.GoodsVo;

@Controller
public class TestController {
	private GoodsService service; 
	
	@RequestMapping("/goodtest")
	public String list(Model model) {
		
		
		List<GoodsVo> list = service.list(); 
		model.addAttribute(list);
		
		return "result";
	}
}
