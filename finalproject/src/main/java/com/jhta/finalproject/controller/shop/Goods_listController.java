package com.jhta.finalproject.controller.shop;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.service.GoodscategoryService;
import com.jhta.finalproject.vo.GoodsCategoryVo;
import com.jhta.finalproject.vo.GoodsVo;

@Controller
public class Goods_listController {
	
	@Autowired GoodsService goodsservice;
	@Autowired GoodscategoryService goodscategoryservice;
	@RequestMapping("/shop/goods_detail")
	public String goods_detail(int gc_num, Model model) {
		
		System.out.println(gc_num+ " ��ǰ ���� ������ �̵�");
		GoodsVo vo = goodsservice.goodsfind(gc_num);
		List<GoodsVo> goodslist= goodsservice.goodlist(gc_num);
		
		List<GoodsCategoryVo> goodscategorylist = goodscategoryservice.list();
		model.addAttribute("goodslist",goodslist);
		model.addAttribute("goodscategorylist",goodscategorylist);
		model.addAttribute("vo", vo);
		return "shop/goods_list";
	}
}
