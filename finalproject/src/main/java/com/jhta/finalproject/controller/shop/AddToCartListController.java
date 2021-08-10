package com.jhta.finalproject.controller.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.vo.GoodsVo;

@Controller
public class AddToCartListController {
	@Autowired GoodsService goodsService;
	@RequestMapping("/shop/add_to_cart_list")
	public String addToCartList(int g_num,Model model) {
	
		
		GoodsVo vo2 = goodsService.goodsfind(g_num);
		model.addAttribute("vo2", vo2);
		
		
		return "/shop/add_to_cart_list";
	}
}
