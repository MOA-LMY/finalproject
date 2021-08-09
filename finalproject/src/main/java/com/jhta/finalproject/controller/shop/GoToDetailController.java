package com.jhta.finalproject.controller.shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.service.GoodscategoryService;
import com.jhta.finalproject.vo.GoodsVo;


@Controller
public class GoToDetailController {
	@Autowired GoodsService goodsService;
	@Autowired GoodscategoryService goodscategoryService;
	@RequestMapping("/shop/gotodetail2")
	public String gotodetial(int g_num, Model model ) {
		
		System.out.println(g_num +"��ȣ �Ѿ����" );
		GoodsVo vo = goodsService.goodsfind(g_num);

		
		System.out.println(vo);
		
		
		
		
		
		model.addAttribute("vo", vo);
		return  "/shop/gotodetail2";
	}
}
