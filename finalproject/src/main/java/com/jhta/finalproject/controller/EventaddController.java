package com.jhta.finalproject.controller;

import java.util.HashMap;
import java.util.Random;

import org.apache.ibatis.reflection.SystemMetaObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.EcEventCouponService;
import com.jhta.finalproject.service.EventService;
import com.jhta.finalproject.vo.CouponBoxVo;
import com.jhta.finalproject.vo.EcVo;

import java.lang.Math;
@RestController
public class EventaddController {
	@Autowired EventService eventservice;
	@Autowired EcEventCouponService eceventcouponservice;
	@RequestMapping(value = "/eventadd",produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> eventadd(String eventinfo){
		

		int leftLimit = 48; // numeral '0'
		int rightLimit = 122; // letter 'z'
		int targetStringLength = 10;
		Random random = new Random();

		String generatedString = random.ints(leftLimit,rightLimit + 1)
		  .filter(i -> (i <= 57 || i >= 65) && (i <= 90 || i >= 97))
		  .limit(targetStringLength)
		  .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
		  .toString();

		System.out.println(generatedString);

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = auth.getName();
		
		HashMap<String, Object> map = new HashMap<String, Object>(); 
		
		System.out.println("eventinfo"+ eventinfo);
		
		try {
			HashMap<String, Object> map2 = new HashMap<String, Object>(); 
			map2.put("e_code", eventinfo);
			map2.put("m_id", id);
			EcVo ecinfo =  eventservice.ecinfo(map2);
			String c_code = ecinfo.getC_code();
			System.out.println("있다");
			map.put("yes", true);
			System.out.println("c_code: "+c_code);
			
			eventservice.couponboxupdate(c_code);
		}catch (NullPointerException e) {
			System.out.println("없다");
			eventservice.couponboxinsert(generatedString);
			map.put("no", false);
			HashMap<String, Object> map1 = new HashMap<String, Object>(); 
			map1.put("c_code", generatedString);
			map1.put("e_code", eventinfo); 
			map1.put("m_id", id);
			int n = eceventcouponservice.ecinsert(map1);
			if(n>0) {
				System.out.println("성공");
			}else {
				System.out.println("실패");
			}
		}
		
			
		return map; 
	}
}
