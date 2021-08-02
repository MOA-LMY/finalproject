package com.jhta.finalproject.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.vo.GoodsVo;

@Controller
public class IndexController {
	@Autowired GoodsService goodsService;
	@Autowired ServletContext sc;
	@RequestMapping("/")
	public ModelAndView inedex() {

		
		
		GoodsVo healthygood = goodsService.healthygood();
		GoodsVo fashiongood = goodsService.fashiongood();
		GoodsVo foodgood = goodsService.foodgood();
		GoodsVo livegood = goodsService.livegood();
		
		String healthygoodsaveimg= healthygood.getG_saveimg();
		String fashiongoodsaveimg= fashiongood.getG_saveimg();
		String foodgoodsaveimg= foodgood.getG_saveimg();
		String livegoodsaveimg= livegood.getG_saveimg();
		
		
		ModelAndView mv = new ModelAndView("index");
		
		mv.addObject("healthygoodsaveimg", healthygoodsaveimg);
		mv.addObject("fashiongoodsaveimg", fashiongoodsaveimg);
		mv.addObject("foodgoodsaveimg", foodgoodsaveimg);
		mv.addObject("livegoodsaveimg", livegoodsaveimg);
	
		return mv;
	}
	

	

}
