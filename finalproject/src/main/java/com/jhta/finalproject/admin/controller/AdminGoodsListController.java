package com.jhta.finalproject.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.vo.GcsListVo;

@Controller
public class AdminGoodsListController {

	@Autowired private GoodsService service;
	
	@GetMapping("/goodslist")
	public String goodslist(Model model) {
	
		List<GcsListVo> goodslist=service.goodslist();
	
		model.addAttribute("list",goodslist);
		return "lsh/admingoodslist";
	}
}

