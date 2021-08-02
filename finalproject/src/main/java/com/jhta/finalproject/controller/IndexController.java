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

		String path =sc.getRealPath("/resources/img");
		System.out.println(path);
		List<GoodsVo> mainlist = goodsService.mainlist();
		System.out.println(mainlist);
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("mainlist", mainlist);
		mv.addObject("path", path);
		System.out.println(mv);
		return mv;
	}
	

	

}
