package com.jhta.finalproject.controller.shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.finalproject.service.ColorService;
import com.jhta.finalproject.service.GoodsDetailService;
import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.service.GoodscategoryService;
import com.jhta.finalproject.vo.ColorVo;
import com.jhta.finalproject.vo.GoodsDetailVo;
import com.jhta.finalproject.vo.GoodsVo;


@Controller
public class GoToDetailController {
	@Autowired GoodsService goodsService;
	@Autowired GoodsDetailService goodsDetailServie;
	@Autowired ColorService colorService;
	@RequestMapping("/shop/gotodetail2")
	public String gotodetial(int g_num, Model model ) {
		
		System.out.println(g_num +"번호 넘어왔음" );
		GoodsVo vo = goodsService.find(g_num);
	//	List<GoodsDetailVo> vo2 = goodsDetailServie.selectOne(g_num);
		ColorVo cv = colorService.SelectOne(g_num);
		System.out.println(vo);
		System.out.println("colorVo넘어옴");
		System.out.println(cv);
		
		
		
	
		model.addAttribute("vo", vo);
	//	model.addAttribute("vo2", vo2);
		model.addAttribute("cv", cv);
		return  "/shop/gotodetail2";
	}
}
