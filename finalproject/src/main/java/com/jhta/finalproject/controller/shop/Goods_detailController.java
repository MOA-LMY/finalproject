package com.jhta.finalproject.controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Goods_detailController {
	
	@RequestMapping("/shop/goods_detail")
	public String goods_detail(int gc_num, Model model) {
		
		System.out.println(gc_num+ " ��ǰ ���� ������ �̵�");
		
		model.addAttribute("gc_num",gc_num);
		
		return "shop/goods_detail";
	}
}
