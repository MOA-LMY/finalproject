package com.jhta.finalproject.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jhta.finalproject.service.ReviewBoardService;

@Controller
public class Admin_BoardReviewController {
	@Autowired private ReviewBoardService service;
	
	@RequestMapping(value = "/admin/board_review", method = RequestMethod.GET)
	public String reviewboard(Model model) {
		model.addAttribute("list",service.list());
		return "/admin/board_review";
	}
}
