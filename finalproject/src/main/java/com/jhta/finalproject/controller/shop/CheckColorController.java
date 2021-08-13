package com.jhta.finalproject.controller.shop;

import java.security.Provider.Service;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.GcsService;
import com.jhta.finalproject.vo.Gcs_AddVo;

@RestController
public class CheckColorController {
	@Autowired GcsService gcsService;
	
	
	@RequestMapping(value = "/shop/checkColor",produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> map(int g_num,int c_subnum){
		HashMap<String, Object> map = new HashMap<String, Object>();
		HashMap<String, Object> m = new HashMap<String, Object>();
		m.put("g_num", g_num);
		m.put("c_subnum",c_subnum);
		List<Gcs_AddVo> list = gcsService.Select_Gcs_SizeList(m);
		System.out.println(list);
		if(list!=null) {
			map.put("result","success");
			map.put("list", list);
		}else {
			map.put("result","fail");
		}
		return map;
	}
}
