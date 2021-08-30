package com.jhta.finalproject.controller;


import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.service.PetService;
import com.jhta.finalproject.vo.GoodsVo;
import com.jhta.finalproject.vo.PetVo;

@Controller
public class IndexController {
	@Autowired ServletContext sc;
	@Autowired GoodsService goodsService;
	@Autowired PetService petService;
	@RequestMapping("/")
	public String inedex( Model model) {
		System.out.println(sc.getRealPath("/resources/img/pet"));
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
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String id = auth.getName();
			model.addAttribute("id", id);
			return "index";
			
		}catch (NullPointerException e) {
			try {
				PetVo vo1 = null;
				PetVo vo2 = null;
				PetVo vo3 = null;
				int i=1;
				List<PetVo> mainpets = petService.mainPet();
				for(PetVo vo : mainpets) {
					model.addAttribute("vo"+i, vo);
					i++;
					System.out.println(vo);					
				}
			}catch (Exception ex){
				ex.printStackTrace();
				System.out.println("실패..");
			}
			System.out.println("각 카페고리 사진 먼저 집어넣어야 한다.");
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String id = auth.getName();
			model.addAttribute("id", id);
			return "index";
			
		}
		
	
		}
}
