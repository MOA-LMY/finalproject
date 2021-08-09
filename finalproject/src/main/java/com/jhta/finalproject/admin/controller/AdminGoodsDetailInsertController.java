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
public class AdminGoodsDetailInsertController {
	@Autowired private ServletContext sc;
	@Autowired private GoodsDetailService service;
	
	
	@GetMapping("/goodsdetailinsert")
	public String insertForm() {
		return "lsh/admingoodsdetailinsert";
	}
	
	
	@PostMapping("/goodsdetailinsert")
	public String insert(String gd_color,String gd_colorcode,String gd_size,int g_num,MultipartFile file1,MultipartFile file2,MultipartFile file3,Model model) {
		String path=sc.getRealPath("/resources/img/goodsdetail");
		String gd_detailorgimg1=file1.getOriginalFilename();
		String gd_detailorgimg2=file2.getOriginalFilename();
		String gd_detailorgimg3=file3.getOriginalFilename();
		String gd_detailsaveimg1=UUID.randomUUID() +"_" + gd_detailorgimg1;
		String gd_detailsaveimg2=UUID.randomUUID() +"_" + gd_detailorgimg2;
		String gd_detailsaveimg3=UUID.randomUUID() +"_" + gd_detailorgimg3;
		try {
			InputStream is1=file1.getInputStream();
			FileOutputStream fos1=new FileOutputStream(path +"\\" + gd_detailsaveimg1);
			FileCopyUtils.copy(is1, fos1);
			is1.close();
			fos1.close();
			File f1=new File(path +"\\" + gd_detailsaveimg1);
			
			InputStream is2=file2.getInputStream();
			FileOutputStream fos2=new FileOutputStream(path +"\\" + gd_detailsaveimg2);
			FileCopyUtils.copy(is2, fos2);
			is2.close();
			fos2.close();
			File f2=new File(path +"\\" + gd_detailsaveimg2);
			
			InputStream is3=file3.getInputStream();
			FileOutputStream fos3=new FileOutputStream(path +"\\" + gd_detailsaveimg3);
			FileCopyUtils.copy(is3, fos3);
			is3.close();
			fos3.close();
			File f3=new File(path +"\\" + gd_detailsaveimg3);
			
			GoodsDetailVo vo=new GoodsDetailVo(0, gd_detailorgimg1,gd_detailsaveimg1,gd_detailorgimg2,gd_detailsaveimg2,gd_detailorgimg3,gd_detailsaveimg3,g_num);
			service.insert(vo);
			model.addAttribute("code","success");
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("code","fail");
		}	
		return "test/hyuntest";
	}
}










