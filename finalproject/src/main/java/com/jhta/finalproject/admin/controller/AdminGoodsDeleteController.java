package com.jhta.finalproject.admin.controller;

import java.io.File;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.vo.GoodsVo;

@Controller
public class AdminGoodsDeleteController {
	@Autowired private GoodsService service;
	@Autowired private ServletContext sc;
	
	@RequestMapping("/goodsdelete")
	public String goodsdelete(int g_num,Model model) {
		GoodsVo vo=service.goodsfind(g_num);
		try {
			String filename=vo.getG_saveimg();
			String dir=sc.getRealPath("/resources/img/goods");
			File f=new File(dir + "\\" + filename);
			if(f.exists()) {
				f.delete();
			}
			service.goodsdelete(g_num);
			return "redirect:/goodslist";
		}catch(Exception e) {
			model.addAttribute("code","fail");
			e.printStackTrace();
			return "test/hyuntest";
		}
	}
}
