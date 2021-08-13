package com.jhta.finalproject.controller.shop;

import java.io.Console;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.GcsService;
import com.jhta.finalproject.vo.Gcs2Vo;
import com.jhta.finalproject.vo.GetcolorgcsVo;

@RestController
public class ColorController {
	
	@Autowired GcsService gcsservice;
	
	@RequestMapping(value ="/shop/color", produces= {MediaType.APPLICATION_JSON_VALUE})
	public  HashMap<String, Object> colorlist(String sz_ssubname,int g_num ){
		
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		String trimsz_ssubname= sz_ssubname.trim();
		int sz_ssubnum =0;
		
		if(trimsz_ssubname.equals("S")) {
			sz_ssubnum =1;
		}else if(trimsz_ssubname.equals("M")) {
			sz_ssubnum =2;
		}else if(trimsz_ssubname.equals("L")) {
			sz_ssubnum =3;
		}
		System.out.println("sz_ssubnum : "+sz_ssubnum +"g_num : "+g_num);
		map.put("sz_ssubnum", sz_ssubnum);
		map.put("g_num", g_num);
		//map.put("sz_ssub_numi", sz_ssub_numi);
		
		List<GetcolorgcsVo> colorlist = gcsservice.colorList(map);
		for(GetcolorgcsVo vo: colorlist) {
			System.out.println(sz_ssubname+ "사이즈에대한 색깔 : "+vo.getC_subnum());
		}
		
		
		map.put("colorlist", colorlist);
		
		return map; 
		
	}
}
