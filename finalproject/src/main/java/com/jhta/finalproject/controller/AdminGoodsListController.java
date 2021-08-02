package com.jhta.finalproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.jhta.finalproject.service.GoodsService;

@Controller
public class AdminGoodsListController {

	@Autowired private GoodsService service;
	
	@GetMapping("/goodslist")
	public String list(Model model) {
		model.addAttribute("list",service.list());
		return "lsh/admingoodslist";
	}
}
