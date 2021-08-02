package com.jhta.finalproject.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Admin_EventListController {
	@RequestMapping(value = "/admin/event_insert", method = RequestMethod.GET)
	public String event_insert() {
		return "/admin/event_insert";
	}
}
