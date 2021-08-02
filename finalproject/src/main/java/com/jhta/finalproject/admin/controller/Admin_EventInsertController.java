package com.jhta.finalproject.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Admin_EventInsertController {
	@RequestMapping(value = "/admin/event_list", method = RequestMethod.GET)
	public String event_insert() {
		return "/admin/event_list";
	}
}
