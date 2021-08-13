package com.jhta.finalproject.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Admin_GoodsController {
	
	//상품 등록 페이지 이동
	@RequestMapping(value = "/admin/goods_insert", method = RequestMethod.GET)
	public String goods_insert() {
		return "/admin/goods_insert";
	}
	
	//상품 리스트
	@RequestMapping(value = "/admin/goods_list", method = RequestMethod.GET)
	public String goods_list() {
		return "/admin/goods_list";
	}
}
