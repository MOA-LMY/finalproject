package com.jhta.finalproject.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jhta.finalproject.service.EventService;

@Controller
public class Admin_EventListController {
	@Autowired private EventService service;
	
	@RequestMapping(value = "/admin/event_list", method = RequestMethod.GET)
	public String event_list(Model model) {
		model.addAttribute("list",service.list());
		return "/admin/event_list";
	}
}
