package com.jhta.finalproject.admin.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Date;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.jhta.finalproject.service.EventService;
import com.jhta.finalproject.vo.EventVo;

@Controller
public class Admin_EventInsertController {
	@Autowired EventService service;
	@Autowired ServletContext sc;
	
	@RequestMapping(value = "/admin/event_insert", method = RequestMethod.GET)
	public String event_insert() {
		return "/admin/event_insert";
	}
	
	@RequestMapping(value = "/admin/event_insert", method = RequestMethod.POST)
	public String insertForm(String e_code,String e_name,String e_content,int e_point,int e_discount,Date e_startdate,Date e_enddate,MultipartFile file1,String m_id,Model model) {
		String path = sc.getRealPath("resources/admin/img/event");
		System.out.println("이미지저장경로" + path);
		String e_orgimg = file1.getOriginalFilename();
		String e_saveimg = UUID.randomUUID() + "_" + e_orgimg;
		try {
			InputStream is = file1.getInputStream();
			FileOutputStream fos = new FileOutputStream(path + "\\" + e_saveimg);
			FileCopyUtils.copy(is, fos);
			is.close();
			fos.close();
			//File f = new File(path + "\\" + e_saveimg);
			EventVo vo = new EventVo(
					e_code, 
					e_name, 
					e_content, 
					e_point, 
					e_discount, 
					e_startdate, 
					e_enddate, 
					e_orgimg, 
					e_saveimg, 
					"qlslqlsl");
			service.insert(vo);
			
			model.addAttribute("list",service.list());
			model.addAttribute("code","success");
			System.out.println("등록성공");
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("code","fail");
			System.out.println("등록실패");
		}
		return "/admin/event_list";
	}
}
