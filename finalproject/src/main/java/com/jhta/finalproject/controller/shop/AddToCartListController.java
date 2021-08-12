package com.jhta.finalproject.controller.shop;

import java.security.Provider.Service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jhta.finalproject.service.BasketService;
import com.jhta.finalproject.service.BasketlistService;
import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.service.OrdersService;
import com.jhta.finalproject.vo.GoodsVo;

@Controller
public class AddToCartListController {
	@Autowired GoodsService goodsService;
	@Autowired BasketService basketService;
	@Autowired BasketlistService basketlistService;
	@Autowired OrdersService ordersService;
	
	
	@RequestMapping("/shop/add_to_cart_list")
	public String addToCartList(String [] color,String [] size,String [] price) {
		for(String c : color) {
			
		System.out.println(c);
		}
		for(String s : size ) {
			System.out.println(s);
		}
		for(String p : price) {
			System.out.println(p);
		}
		
		
		
		
		
	/*
		System.out.println(g_num);
		GoodsVo vo2 = goodsService.goodsfind(g_num);
		
		goodsService.goodsfind(g_num);
		*/
		
		
		
		//delinfoService.isnert();
		//basketService.insert();
		//basketlistService.insert();
		//addtocart踰덊샇�늻瑜대㈃ order�뀒�씠釉� insert(ex 1,"誘몄쿂由�",...
		//諛곗넚吏��옉 硫ㅻ쾭�쓽 議곗씤�빐�꽌 �빐�떦諛곗넚吏�踰덊샇 �뼸�뼱�삤湲�    select d_num from delinfo d, members m where d.m_id = #{m_id} and d.d_mainaddr = 1
		//�옣諛붽뎄�땲 insert 1踰� 珥앹긽�뭹�닔�웾 

		return "/shop/add_to_cart_list";
	}
}
