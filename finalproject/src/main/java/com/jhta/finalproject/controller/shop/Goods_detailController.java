package com.jhta.finalproject.controller.shop;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.vo.GoodsVo;

@Controller
public class Goods_detailController {
	
	@Autowired GoodsService service;
	
	@RequestMapping("/shop/goods_detail")
	public String goods_detail(int gc_num, Model model) {
		
		System.out.println(gc_num+ " 상품 디데일 페이지 이동");
		List<GoodsVo> list= service.healthygoodlist(gc_num);
		
		model.addAttribute("list",list);
		
		return "shop/goods_detail";
	}
}
