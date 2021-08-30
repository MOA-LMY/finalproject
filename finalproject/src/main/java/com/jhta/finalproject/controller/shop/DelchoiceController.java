package com.jhta.finalproject.controller.shop;

import java.util.HashMap;

import javax.print.attribute.standard.Media;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.DelinfoService;

@RestController
public class DelchoiceController {
	
@Autowired DelinfoService delinfoservice;
	
@RequestMapping(value = "/shop/delchoice", produces = {MediaType.APPLICATION_JSON_VALUE})
public HashMap<String, Object> delchoice (int opthionvalue){
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	String id = auth.getName();
	
	HashMap<String, Object> map = new HashMap<String, Object>(); 
	
	System.out.println("ajax 들어옴"+"opthionvalue: "+opthionvalue);
	
	int n = delinfoservice.mainsubdelupdate(id);
	if(n>0) {
		System.out.println("1에서 0으로 성공 ");
	}else {
		System.out.println("실패");
	}
	
	map.put("m_id", id);
	map.put("d_num",opthionvalue);
	
	int m = delinfoservice.submaindelupdate(map);
	
	if(m>0) {
		System.out.println("0에서 1으로 성공 ");
	}else {
		System.out.println("실패");
	}
	return map; 
}
}
