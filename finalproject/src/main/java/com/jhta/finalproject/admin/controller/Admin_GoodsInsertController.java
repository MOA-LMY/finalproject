package com.jhta.finalproject.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Admin_GoodsInsertController {
	@RequestMapping(value = "/admin/goods_insert", method = RequestMethod.GET)
	public String goods_insert() {
		return "/admin/goods_insert";
	}
}
