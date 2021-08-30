package com.jhta.finalproject.controller.shop;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.EventService;
import com.jhta.finalproject.service.OrderlistService;
import com.jhta.finalproject.vo.EventVo;
import com.jhta.finalproject.vo.GoodOrderlistGcsVo;
import com.jhta.finalproject.vo.OrdersVo;

@RestController
public class ApplyCouponController {
	@Autowired OrderlistService orderlistservice;
	@Autowired EventService eventservice; 
	@RequestMapping(value = "/shop/applycoupon", produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> applucoupon(String couponvalue){
		System.out.println(couponvalue);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = auth.getName();
		int orderprice =0; 
		
		OrdersVo newordervo= orderlistservice.neworder(id);
		HashMap<String, Object> map= new HashMap<String, Object>(); 
		
		List<GoodOrderlistGcsVo> neworderlist = orderlistservice.neworderlist(newordervo.getO_num());

		 for(GoodOrderlistGcsVo vo : neworderlist) {
				
				System.out.println(" getOl_totalprice : "+vo.getOl_totalprice());
				orderprice += vo.getOl_totalprice();
			}
		 
		 EventVo eventvo= eventservice.getinfo(couponvalue);
		 map.put("eventvo", eventvo);
		 map.put("orderprice", orderprice);
		 return map; 
	}
}
