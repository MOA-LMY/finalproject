package com.jhta.finalproject.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.jhta.finalproject.service.MembersService;

@Controller
public class AdminMembersDeleteController {
	@Autowired private MembersService service;
	
	@GetMapping("/membersdelete")
	public String delete(String m_id) {
		service.delete(m_id);
		return "redirect:/memberslist";
	}
}
