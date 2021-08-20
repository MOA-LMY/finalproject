package com.jhta.finalproject.controller.shop;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.BasketService;

@RestController
public class DeleteBasketController {
	@Autowired BasketService basketService;
	@RequestMapping(value = "/shop/DelBasket",produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> map(int bs_num){
	HashMap<String, Object> m = new HashMap<String, Object>();
	HashMap<String, Object> map = new HashMap<String, Object>();
	m.put("bs_num", bs_num);
	int n = basketService.deleteAll(m);
	
	if(n>0) {
		map.put("result", "success");
	}else {
		map.put("result", "fail");
	}
	return map;
	
}
	
	
	
}
