package com.jhta.finalproject.controller.shop;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.ColorService;
import com.jhta.finalproject.service.SizesService;
import com.jhta.finalproject.vo.ColorVo;
import com.jhta.finalproject.vo.SizesVo;

@RestController
public class SizelistController {

@Autowired SizesService sizesservice;
@Autowired ColorService colorservice;
@RequestMapping(value="/shop/sizelist", produces= {MediaType.APPLICATION_JSON_VALUE})
public HashMap<String, Object> sizelist(int g_num){
	HashMap<String, Object> map = new HashMap<String, Object>();
	
	System.out.println(g_num);
	List<SizesVo> sizeslist= sizesservice.sizeslist(g_num);
	List<ColorVo> colorlist= colorservice.colorlist(g_num);
	map.put("colorlist", colorlist);
	map.put("sizeslist", sizeslist);
	
	
	return map;
}
}
