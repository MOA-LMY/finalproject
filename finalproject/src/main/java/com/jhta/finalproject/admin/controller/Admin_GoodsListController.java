package com.jhta.finalproject.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Admin_GoodsListController {
	@RequestMapping(value = "/admin/goods_list", method = RequestMethod.GET)
	public String goods_list() {
		return "/admin/goods_list";
	}
}
