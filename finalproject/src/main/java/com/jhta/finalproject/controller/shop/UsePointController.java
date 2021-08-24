package com.jhta.finalproject.controller.shop;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.MembersService;
import com.jhta.finalproject.vo.MembersVo;

@RestController
public class UsePointController {
	
	@Autowired MembersService memberservice;
	@RequestMapping(value = "/shop/userpoint",produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> userpoint (){
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		String id="qwer";
		MembersVo membersvo= memberservice.find(id);
		int point = membersvo.getM_points();
		
		map.put("point", point);
		
		return map; 
	}
}
