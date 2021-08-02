package com.jhta.finalproject.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Admin_OrderListController {
	@RequestMapping(value = "/admin/order_list",method = RequestMethod.GET)
	public String order_list() {
		return "/admin/order_list";
	}
}
