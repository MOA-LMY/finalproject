package com.jhta.finalproject.controller.shop;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.BasketlistService;

@RestController
public class DeleteAddToCartListController {
	@Autowired BasketlistService basketlistService;
	@RequestMapping(value = "/shop/DelCartList",produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> map(int bk_num){
		HashMap<String, Object> map = new HashMap<String, Object>();
		HashMap<String, Object> m = new HashMap<String, Object>();
		m.put("bk_num", bk_num);
		int n=	basketlistService.Delete_CartList(m);
		if(n>0) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}
		return map;
		
	}
	@RequestMapping(value = "/shop/DelCartListAll",produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> map(){
		HashMap<String, Object> map = new HashMap<String, Object>();
	
		int n=	basketlistService.Delete_CartListAll();
		if(n>0) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}
		return map;
		
	}
	
}
