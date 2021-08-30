package com.jhta.finalproject.admin.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.EventService;
import com.jhta.finalproject.vo.EventVo;

@RestController
public class Admin_EventSearchController {
	
	@Autowired EventService eventservice;
	@RequestMapping(value="/admin/event_search",produces= {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> eventsearch(String field, String keyword, String e_startdate, String e_enddate){
		
		HashMap<String, Object>map = new HashMap<String, Object>();
		map.put("field", field);
		map.put("keyword", keyword);
		map.put("e_startdate", e_startdate);
		map.put("e_enddate", e_enddate);
		List<EventVo> event_searchlist =  eventservice.event_search(map);
		
		for(EventVo vo : event_searchlist) {
			
			System.out.println("getE_name" + vo.getE_name());
		
		}
		HashMap<String, Object>map1 = new HashMap<String, Object>();
		map1.put("event_searchlist", event_searchlist);
		return map1; 
	}
}
