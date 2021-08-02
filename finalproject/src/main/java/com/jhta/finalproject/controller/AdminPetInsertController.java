package com.jhta.finalproject.controller;

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

import com.jhta.finalproject.service.PetService;
import com.jhta.finalproject.vo.PetVo;

@Controller
public class AdminPetInsertController {
	@Autowired ServletContext sc;
	@Autowired PetService service;
	
	@GetMapping("/petinsert")
	public String insertForm() {
		return "lsh/adminpetinsert";
	}
	
	@PostMapping("/petinsert")
	public String insert(String pet_name,String pet_age,String pet_color,int pet_price,String pet_type,String pet_content,int r_num,String pt_id,MultipartFile file1,Model model) {
		String path=sc.getRealPath("/resources/img/pet");
		String pet_orgimg=file1.getOriginalFilename();
		String pet_saveimg=UUID.randomUUID() +"_" + pet_orgimg;
		try {
			InputStream is=file1.getInputStream();
			FileOutputStream fos=new FileOutputStream(path +"\\" + pet_saveimg);
			FileCopyUtils.copy(is, fos);
			is.close();
			fos.close();
			File f=new File(path +"\\" + pet_saveimg);
			PetVo vo=new PetVo(0, pet_name, pet_age, pet_color, pet_price, pet_type, pet_content, pet_orgimg, pet_saveimg, r_num, pt_id);
			service.insert(vo);
			model.addAttribute("code","success");
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("code","fail");
		}	
		return "test/hyuntest";
	}
}
