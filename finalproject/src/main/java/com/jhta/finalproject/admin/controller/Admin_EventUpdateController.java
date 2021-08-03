package com.jhta.finalproject.admin.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
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
import com.jhta.finalproject.vo.EventFormDataVo;
import com.jhta.finalproject.vo.EventVo;

@Controller
public class Admin_EventUpdateController {
	@Autowired private EventService service;
	@Autowired private ServletContext sc;
	
	@RequestMapping(value = "/admin/event_update", method = RequestMethod.GET)
	public String event_update(String e_code,Model model) {
		EventVo vo = service.getinfo(e_code);
		model.addAttribute("vo", vo);
		return "/admin/event_update";
	}
	
	@RequestMapping(value = "/admin/event_update", method = RequestMethod.POST)
	public String updateForm(EventFormDataVo data,Model model) {
		MultipartFile file1 = data.getFile1();
		try {
			if(!file1.isEmpty()) {
				String dir = sc.getRealPath("/resources/admin/img/event");
				String e_orgimg = file1.getOriginalFilename();
				String e_saveimg = UUID.randomUUID() + "_" + e_orgimg;
				InputStream is = file1.getInputStream();
				FileOutputStream fos = new FileOutputStream(dir + "\\" + e_saveimg);
				FileCopyUtils.copy(is, fos);
				is.close();
				fos.close();
				
				EventVo vo = service.getinfo(data.getE_code());
				File f = new File(dir + "\\" + vo.getE_saveimg());
				f.delete();
				
				EventVo vo1 = new EventVo(
						data.getE_code(), 
						data.getE_name(), 
						data.getE_content(), 
						data.getE_point(), 
						data.getE_discount(), 
						data.getE_startdate(), 
						data.getE_enddate(), 
						e_orgimg, 
						e_saveimg, 
						"qlslqlsl");
				service.update(vo1);
			}else {
				EventVo vo1 = new EventVo(
						data.getE_code(), 
						data.getE_name(), 
						data.getE_content(), 
						data.getE_point(), 
						data.getE_discount(), 
						data.getE_startdate(), 
						data.getE_enddate(), 
						null, 
						null, 
						"qlslqlsl");
				service.update(vo1);
			}
			model.addAttribute("list",service.list());
			//model.addAttribute("code","success");
			System.out.println("이벤트 수정 성공");
		}catch(Exception e) {
			e.printStackTrace();
			//model.addAttribute("code","fail");
			System.out.println("이벤트 수정 실패");
		}
		return "/admin/event_list";
	}
}
