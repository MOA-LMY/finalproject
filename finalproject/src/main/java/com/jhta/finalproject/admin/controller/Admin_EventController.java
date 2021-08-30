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
import com.jhta.finalproject.vo.EventFormDataVo;
import com.jhta.finalproject.vo.EventVo;

@Controller
public class Admin_EventController {
	@Autowired private EventService eventservice;
	@Autowired ServletContext sc;
	
	//이벤트 등록 페이지 이동
	@RequestMapping(value = "/admin/event_insert", method = RequestMethod.GET)
	public String event_insert() {
		return "/admin/event_insert";
	}
	
	//이벤트 등록
	@RequestMapping(value = "/admin/event_insert", method = RequestMethod.POST)
	public String insertForm(String e_code,String e_name,String e_content,int e_point,int e_discount,Date e_startdate,Date e_enddate,MultipartFile file1,String m_id,Model model) {
		String path = sc.getRealPath("/resources/img/event");
		System.out.println("이미지저장경로 " + path);
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
					e_saveimg 
					);
			eventservice.insert(vo);
			
			model.addAttribute("list",eventservice.list());
			model.addAttribute("code","success");
			System.out.println("등록성공");
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("code","fail");
			System.out.println("등록실패");
		}
		return "/admin/event_list";
	}
	
	//이벤트 목록
	@RequestMapping(value = "/admin/event_list", method = RequestMethod.GET)
	public String event_list(Model model) {
		
		
		
		
		
		
		
		
		
		
		
		
		model.addAttribute("list",eventservice.list());
		return "/admin/event_list";
	}
	
	//이벤트 상세보기
	@RequestMapping(value = "/admin/event_detail", method = RequestMethod.GET)
	public String event_detail(String e_code,Model model) {
		EventVo vo = eventservice.getinfo(e_code);
		model.addAttribute("vo",vo);
		return "/admin/event_detail";
	}
	
	//이벤트 삭제
	@RequestMapping(value = "/admin/event_delete", method = RequestMethod.GET)
	public String event_delete(String e_code,Model model) {
		EventVo vo = eventservice.getinfo(e_code);
		System.out.println(vo);
		try {
			String filename = vo.getE_saveimg();
			String dir = sc.getRealPath("/resources/img/event");
			File f = new File(dir + "\\" + filename);
			if(f.exists()) {
				f.delete();
			}
			eventservice.delete(e_code);
			System.out.println("이벤트 삭제 성공");
			return "redirect:/admin/event_list";
		}catch(Exception e) {
			model.addAttribute("code","fail");
			e.printStackTrace();
			System.out.println("이벤트 삭제 실패");
			return "/admin/event_list";
		}
	}
	
	//이벤트 수정 페이지 이동
	@RequestMapping(value = "/admin/event_update", method = RequestMethod.GET)
	public String event_update(String e_code,Model model) {
		String filefullname="";
		EventVo vo = eventservice.getinfo(e_code);
		String dir = sc.getRealPath("/resources/img/event");
		
		filefullname = dir + "\\" + vo.getE_saveimg();
		System.out.println("filefullname : "+ filefullname);
		model.addAttribute("filefullname", filefullname);
		model.addAttribute("vo", vo);
		return "/admin/event_update";
	}
	
	//이벤트 수정
	@RequestMapping(value = "/admin/event_update", method = RequestMethod.POST)
	public String updateForm(EventFormDataVo data,Model model) {
		MultipartFile file1 = data.getFile1();
		
		try {
			if(!file1.isEmpty()) {
				String dir = sc.getRealPath("/resources/img/event");
				String e_orgimg = file1.getOriginalFilename();
				System.out.print("e_orgimg"+e_orgimg);
				String e_saveimg = UUID.randomUUID() + "_" + e_orgimg;
				System.out.print("e_saveimg"+e_saveimg);
				InputStream is = file1.getInputStream();
				FileOutputStream fos = new FileOutputStream(dir + "\\" + e_saveimg);
				FileCopyUtils.copy(is, fos);
				is.close();
				fos.close();
				
				EventVo vo = eventservice.getinfo(data.getE_code());
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
						e_saveimg
						);
				eventservice.update(vo1);
			}else {
				EventVo vo1 = new EventVo(
						data.getE_code(), 
						data.getE_name(), 
						data.getE_content(), 
						data.getE_point(), 
						data.getE_discount(), 
						data.getE_startdate(), 
						data.getE_enddate(), 
						"", 
						""
						);
				eventservice.update(vo1);
			}
			
			model.addAttribute("list",eventservice.list());
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
