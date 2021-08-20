package com.jhta.finalproject.controller.shop;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.DelinfoService;
import com.jhta.finalproject.vo.DelInfoVo;

@RestController
public class DelSelectController {
@Autowired DelinfoService delinfoservice;
	@RequestMapping(value = "/shop/delselect" , produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> delselect(int delchoice){
		
		System.out.println("서버 : "+delchoice);
		HashMap<String, Object> map = new HashMap<String, Object>(); 
		
		DelInfoVo delinfovo=  delinfoservice.delinfo(delchoice);
		
		map.put("delinfovo", delinfovo);
		return map;
	}
}
