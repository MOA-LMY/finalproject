package com.jhta.finalproject.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Admin_BoardQuestionController {
	@RequestMapping(value = "/admin/board_question", method = RequestMethod.GET)
	public String qboard() {
		return "/admin/board_question";
	}
}
