package com.jhta.finalproject.controller.mypage;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.BasketlistService;
import com.jhta.finalproject.service.OrderlistService;
import com.jhta.finalproject.vo.BasketlitgetallVo;
import com.jhta.finalproject.vo.OrderlistgoodallinfoVo;

@RestController
public class ViewgoodsController {
	@Autowired OrderlistService orderlistservice;
	@Autowired BasketlistService basketlistservice;
	@RequestMapping(value = "/shop/viewgoods" ,produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> viewgoods(int o_num){
		Authentication auth  = SecurityContextHolder.getContext().getAuthentication();
		String id = auth.getName();
		System.out.println("o_num "+o_num + "id" +id);
		HashMap<String, Object> map = new HashMap<String, Object>(); 
		
		map.put("m_id", id);
		map.put("o_num", o_num);
		List<OrderlistgoodallinfoVo> orderlistgoodallinfolist =orderlistservice.orderlistgoodallinfo(map);
		List<BasketlitgetallVo> basketlistgetalllist = basketlistservice.basketlitgetall(map);
		HashMap<String, Object> map1 = new HashMap<String, Object>(); 
		map1.put("orderlistgoodallinfolist", orderlistgoodallinfolist);
		map1.put("basketlistgetalllist", basketlistgetalllist);
		return map1; 
	}
}
