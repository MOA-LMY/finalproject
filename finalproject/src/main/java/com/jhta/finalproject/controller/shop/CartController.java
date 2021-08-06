package com.jhta.finalproject.controller.shop;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;

import org.springframework.http.MediaType;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CartController {
	
	
	@RequestMapping(value="/shop/cart" ,produces= {MediaType.APPLICATION_JSON_VALUE})
	public  HashMap<String, Object> cart (@RequestParam(value="p_numarray[]") List<String> p_numarray, Principal principal){
		System.out.println(principal.getName());
		for(int i=0; i<p_numarray.size(); i++) {
		System.out.println("컨틀로러로 넘어온 상품 번호"+p_numarray.get(i));
		
		}
		
		HashMap<String, Object> map= new HashMap<String, Object>();
		
		
		map.put("result","success");
		return map;
	}
	
}
