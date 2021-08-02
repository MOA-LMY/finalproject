package com.jhta.finalproject.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Admin_BoardReviewController {
	@RequestMapping(value = "/admin/board_review", method = RequestMethod.GET)
	public String rboard() {
		return "/admin/board_review";
	}
}
