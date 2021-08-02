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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.vo.GoodsFormDataVo;
import com.jhta.finalproject.vo.GoodsVo;


@Controller
public class AdminGoodsUpdateController {
	@Autowired private GoodsService service;
	@Autowired private ServletContext sc;
	
	@GetMapping("/goodsupdate")
	public String updateForm(int g_num,Model model) {
		GoodsVo vo=service.find(g_num);
		model.addAttribute("vo",vo);
		return "lsh/admingoodsupdate";
	}
	
	@PostMapping("/goodsupdate")
	public String update(GoodsFormDataVo data,Model model) {
		MultipartFile file1=data.getFile1();
		try {
			if(!file1.isEmpty()) {
				String dir=sc.getRealPath("/resources/img/goods");
				String g_orgimg=file1.getOriginalFilename();
				String g_saveimg=UUID.randomUUID()+"_"+g_orgimg;
				InputStream is=file1.getInputStream();
				FileOutputStream fos=new FileOutputStream(dir + "\\" + g_saveimg);
				FileCopyUtils.copy(is, fos);
				is.close();
				fos.close();
				GoodsVo vo=service.find(data.getG_num());
				File f=new File(dir+ "\\" + vo.getG_saveimg());
				f.delete();
				GoodsVo vo1=new GoodsVo(data.getG_num(), data.getG_name(),data.getG_price(),data.getG_content(), g_orgimg, g_saveimg, null, data.getG_hit(), data.getG_ea(), data.getG_info(), data.getGc_num());
				service.update(vo1);
			}else {
				GoodsVo vo1=new GoodsVo(data.getG_num(), data.getG_name(),data.getG_price(),data.getG_content(), null, null, null, data.getG_hit(), data.getG_ea(), data.getG_info(), data.getGc_num());
				service.update(vo1);
			}
			model.addAttribute("code","success");
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("code","fail");
		}
		return "test/hyuntest";
	}
}
