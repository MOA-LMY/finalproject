package com.jhta.finalproject.controller.shop;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.BasketlistService;
import com.jhta.finalproject.service.EventService;
import com.jhta.finalproject.service.OrderlistService;
import com.jhta.finalproject.vo.BasketlistorderVo;
import com.jhta.finalproject.vo.EventVo;
import com.jhta.finalproject.vo.GoodOrderlistGcsVo;
import com.jhta.finalproject.vo.OrdersVo;

@RestController
public class basketorderApplyCouponController {
	@Autowired BasketlistService basketlistservice;
	@Autowired EventService eventservice; 
	@RequestMapping(value = "/shop/basketorderapplycoupon", produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> applucoupon(String couponvalue, int bs_num){
		System.out.println(couponvalue+"bs_num : "+bs_num);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = auth.getName();
		int basketprice =0; 
		
		
		HashMap<String, Object> map= new HashMap<String, Object>(); 
		
	 List<BasketlistorderVo> basketlist =basketlistservice.basketlistorder(bs_num); 
		 
		 for(BasketlistorderVo basketlistorderVo : basketlist) {
				
				System.out.println(" getBk_totalprice : "+basketlistorderVo.getBk_totalprice());
				basketprice += basketlistorderVo.getBk_totalprice();
		 }
		 EventVo eventvo= eventservice.getinfo(couponvalue);
		 map.put("eventvo", eventvo);
		 map.put("basketprice", basketprice);
		 return map; 
	}
}
