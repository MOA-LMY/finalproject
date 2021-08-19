package com.jhta.finalproject.controller.shop;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.ColorService;
import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.service.SizesService;
import com.jhta.finalproject.vo.ColorVo;
import com.jhta.finalproject.vo.GoodsVo;
import com.jhta.finalproject.vo.SizesVo;

@RestController
public class OrderGcsController {
	@Autowired SizesService sizesservice;
	@Autowired ColorService colorservice;
	@Autowired GoodsService goodsservice;
	@RequestMapping(value ="/shop/gcsinfos", produces= {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> gcsinfo(int g_num, int goodeas ){
		
		HashMap<String, Object> map = new HashMap<String, Object>(); 
		
		GoodsVo vo = goodsservice.goodsfind(g_num);
		int totalprice = vo.getG_price()*goodeas;
		List<SizesVo> sizeslist= sizesservice.sizeslist(g_num);
		List<ColorVo> colorlist= colorservice.colorlist(g_num);
		map.put("colorlist", colorlist);
		map.put("sizeslist", sizeslist);
		map.put("g_num", g_num);
		map.put("totalprice", totalprice);
		return map; 
		
		
	}
}
