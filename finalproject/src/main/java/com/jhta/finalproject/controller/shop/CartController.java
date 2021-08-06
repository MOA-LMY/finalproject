package com.jhta.finalproject.controller.shop;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.DelinfoService;
import com.jhta.finalproject.service.OrdersService;
import com.jhta.finalproject.vo.OrdersVo;

@RestController
public class CartController {
	
	@Autowired OrdersService orderservice;
	@Autowired DelinfoService delinfoservice; 
	@RequestMapping(value="/shop/cart" ,produces= {MediaType.APPLICATION_JSON_VALUE})
	public  HashMap<String, Object> cart (@RequestParam(value="p_numarray[]") List<String> p_numarray){
	
		int d_num = delinfoservice.d_numfind("test");
		System.out.println("d_num : " + d_num);
		//  아이디 임의로 준것 세션 아이디 받아서 집어 넣을것 
		
		int n = orderservice.insert(new OrdersVo(0, "미완료","test", d_num));
		if(n>0) {
			System.out.println("주문테이블 생성 성공 ");
		}
		for(int i=0; i<p_numarray.size(); i++) {
			
		System.out.println("컨틀로러로 넘어온 상품 번호"+p_numarray.get(i));
		

		}
		
		HashMap<String, Object> map= new HashMap<String, Object>();
		
		map.put("result","success");
		return map;
	}
	
}
