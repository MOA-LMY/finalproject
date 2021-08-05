package com.jhta.finalproject.admin.controller;

import java.io.File;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jhta.finalproject.service.EventService;
import com.jhta.finalproject.vo.EventVo;

@Controller
public class Admin_EventDeleteController {
	@Autowired private EventService service;
	@Autowired ServletContext sc;
	
	@RequestMapping(value = "/admin/event_delete", method = RequestMethod.GET)
	public String event_delete(String e_code,Model model) {
		EventVo vo = service.getinfo(e_code);
		System.out.println(vo);
		try {
			String filename = vo.getE_saveimg();
			String dir = sc.getRealPath("/resources/admin/img/event");
			File f = new File(dir + "\\" + filename);
			if(f.exists()) {
				f.delete();
			}
			service.delete(e_code);
			System.out.println("이벤트 삭제 성공");
			return "redirect:/admin/event_list";
		}catch(Exception e) {
			model.addAttribute("code","fail");
			e.printStackTrace();
			System.out.println("이벤트 삭제 실패");
			return "/admin/event_list";
		}
	}
}
