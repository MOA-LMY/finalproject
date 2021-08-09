package com.jhta.finalproject.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jhta.finalproject.service.EventService;
import com.jhta.finalproject.vo.EventVo;

@Controller
public class Admin_EventDetailController {
	@Autowired private EventService service;
	
	@RequestMapping(value = "/admin/event_detail", method = RequestMethod.GET)
	public String event_detail(String e_code,Model model) {
		EventVo vo = service.getinfo(e_code);
		model.addAttribute("vo",vo);
		return "/admin/event_detail";
	}
}
