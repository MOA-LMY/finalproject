package com.jhta.finalproject.admin.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.vo.GoodsVo;

@Controller
public class AdminGoodsInsertController {
	@Autowired private ServletContext sc;
	@Autowired private GoodsService service;
	
	
	@GetMapping("/goodsinsert")
	public String insertForm(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = auth.getName();
		System.out.println(id);
		model.addAttribute("id", id);


		return "lsh/admingoodsinsert";
		
	}
	
	
	@PostMapping("/goodsinsert")
	public String insert(String g_name,int g_price,String g_content,int g_ea,String g_info,int gc_num,MultipartFile file1,Model model) {
		String path=sc.getRealPath("/resources/img/goods");
		System.out.println(path);
		String g_orgimg=file1.getOriginalFilename();
		String g_saveimg=UUID.randomUUID() +"_" + g_orgimg;
		try {
			InputStream is=file1.getInputStream();
			FileOutputStream fos=new FileOutputStream(path +"\\" + g_saveimg);
			FileCopyUtils.copy(is, fos);
			is.close();
			fos.close();
			File f1=new File(path +"\\" + g_saveimg);
			GoodsVo vo=new GoodsVo(0, g_name, g_price, g_content, g_orgimg, g_saveimg, null, 0, g_ea, g_info, gc_num);
			service.insert(vo);
			model.addAttribute("code","success");
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("code","fail");
		}	
		return "test/hyuntest";
	}
}









