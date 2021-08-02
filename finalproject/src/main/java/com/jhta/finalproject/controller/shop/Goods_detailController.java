package com.jhta.finalproject.controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Goods_detailController {
	
	@RequestMapping("/shop/goods_detail")
	public String goods_detail(int g_num, Model model) {
		
		System.out.println(g_num+ " ��ǰ ���� ������ �̵�");
		
		model.addAttribute("g_num",g_num);
		
		return "shop/goods_detail";
	}
}
