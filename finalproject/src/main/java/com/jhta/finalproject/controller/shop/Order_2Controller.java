package com.jhta.finalproject.controller.shop;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.finalproject.service.OrderlistService;
import com.jhta.finalproject.service.OrdersService;
import com.jhta.finalproject.vo.OrderListVo;
import com.jhta.finalproject.vo.OrdersVo;

@Controller
public class Order_2Controller {
	@Autowired OrderlistService orderlistservice;
	
	@RequestMapping("/shop/goods_order2")
	public String orderlist() {
		
		
		OrdersVo newordervo= orderlistservice.neworder("qwer");
		
		HashMap<String, Object> map = new HashMap<String, Object>(); 
		
		//System.out.println("o_num: "+newordervo.getO_num() +"m_id :"+ newordervo.getM_id() +"d_num: "+ newordervo.getD_num());
		
		List<OrderListVo> neworderlist = orderlistservice.neworderlist(newordervo.getO_num());
		
//		for(OrderListVo vo : neworderlist) {
//			
//				System.out.println(" 주문리스트 번호 "+vo.getOl_num());
//			
//		}
		
		map.put("neworderlist", neworderlist);
		
			return "/shop/goods_order";
			
		}
}
