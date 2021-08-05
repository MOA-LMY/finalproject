package com.jhta.finalproject.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminGoodsDetailController {
	
	@RequestMapping("/lsh/admingoodsdetail")
	public String admingoodsdetail() {
		return "lsh/admingoodsdetail";
	}
}
