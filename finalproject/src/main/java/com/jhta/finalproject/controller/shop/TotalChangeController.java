package com.jhta.finalproject.controller.shop;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.vo.GoodsVo;

@RestController
public class TotalChangeController {
	
	@Autowired GoodsService goodserservice;
@RequestMapping(value="/shop/totalchange", produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> totalchange(int ol_ea, int g_num){
	
	HashMap<String, Object> map = new HashMap<String, Object>(); 
	
	GoodsVo goodsvo= goodserservice.goodsfind(g_num);
	
	System.out.println(goodsvo.getG_price()* ol_ea);
	
	int totalprice = goodsvo.getG_price()* ol_ea ;
	map.put("totalprice", totalprice);
	return map; 
	
}
}
