package com.jhta.finalproject.controller.shop;

import java.security.Provider.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public String addToCartList(int g_num) {
		
		
		System.out.println(g_num);
		GoodsVo vo2 = goodsService.goodsfind(g_num);
		
		goodsService.goodsfind(g_num);
		
		
		
		
		//delinfoService.isnert();
		//basketService.insert();
		//basketlistService.insert();
		//addtocart번호누르면 order테이블 insert(ex 1,"미처리",...
		//배송지랑 멤버의 조인해서 해당배송지번호 얻어오기    select d_num from delinfo d, members m where d.m_id = #{m_id} and d.d_mainaddr = 1
		//장바구니 insert 1번 총상품수량 
		return "/shop/add_to_cart_list";
	}
}
