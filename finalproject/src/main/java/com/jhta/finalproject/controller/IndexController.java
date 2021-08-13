package com.jhta.finalproject.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.vo.GoodsVo;

@Controller
public class IndexController {
	@Autowired GoodsService goodsService;
	@RequestMapping("/")
	public String inedex( Model model) {

		try {
			
			GoodsVo healthygood = goodsService.healthygood();
			GoodsVo fashiongood = goodsService.fashiongood();
			GoodsVo foodgood = goodsService.foodgood();
			GoodsVo livegood = goodsService.livegood();
			
			String healthygoodsaveimg= healthygood.getG_saveimg();
			System.out.println("healthygoodsaveimg: "+healthygoodsaveimg);
			String fashiongoodsaveimg= fashiongood.getG_saveimg();
			String foodgoodsaveimg= foodgood.getG_saveimg();
			String livegoodsaveimg= livegood.getG_saveimg();
			
			
			model.addAttribute("healthygoodsaveimg", healthygoodsaveimg);
			model.addAttribute("fashiongoodsaveimg", fashiongoodsaveimg);
			model.addAttribute("foodgoodsaveimg", foodgoodsaveimg);
			model.addAttribute("livegoodsaveimg", livegoodsaveimg);
				
			return "index";
			
		}catch (NullPointerException e) {

			System.out.println("각 카페고리 사진 먼저 집어넣어야 한다.");
			
			return "index";
			
		}
	
		}
}
