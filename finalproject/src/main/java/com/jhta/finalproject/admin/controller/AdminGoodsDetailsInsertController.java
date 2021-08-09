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

import com.jhta.finalproject.service.GoodsDetailService;
import com.jhta.finalproject.vo.GoodsDetailVo;

@Controller
public class AdminGoodsDetailsInsertController {
	@Autowired private ServletContext sc;
	@Autowired private GoodsDetailService service;
	
	
	@GetMapping("/goodsdetailinsert")
	public String insertForm() {
		return "lsh/admingoodsdetailinsert";
	}
	
	
	@PostMapping("/goodsdetailinsert")
	public String insert(String gd_color,String gd_size,int g_num,MultipartFile file1,Model model) {
		String path=sc.getRealPath("/resources/img/goodsdetail");
		System.out.println(path);
		String gd_detailorgimg=file1.getOriginalFilename();
		String gd_detailsaveimg=UUID.randomUUID() +"_" + gd_detailorgimg;
		try {
			InputStream is=file1.getInputStream();
			FileOutputStream fos=new FileOutputStream(path +"\\" + gd_detailsaveimg);
			FileCopyUtils.copy(is, fos);
			is.close();
			fos.close();
			File f1=new File(path +"\\" + gd_detailsaveimg);
		//	GoodsDetailVo vo= new GoodsDetailVo(g_num, gd_detailorgimg, gd_detailsaveimg, gd_detailorgimg, gd_detailsaveimg, gd_detailorgimg, gd_detailsaveimg, g_num)
		//	service.insert(vo);
			//**--> 이미지컬럼 파일 객체 생성해야해요 상현쒸~~(민영)
			model.addAttribute("code","success");
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("code","fail");
		}	
		return "test/hyuntest";
	}
}









