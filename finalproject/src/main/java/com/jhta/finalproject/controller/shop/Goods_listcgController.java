package com.jhta.finalproject.controller.shop;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.vo.GoodsVo;

@RestController
public class Goods_listcgController {
	@Autowired GoodsService service;
	@RequestMapping(value="/shop/goods_detail/cg", produces ={MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> healthgoods_detail(int gc_num) {
		System.out.println("ajax µé¾î¿È" + gc_num);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		List<GoodsVo> list= service.gcgoodlist(gc_num);
		
		map.put("list", list);
		
		return map;
		
	}
}
