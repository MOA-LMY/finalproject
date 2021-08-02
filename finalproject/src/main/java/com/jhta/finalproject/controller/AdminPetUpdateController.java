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
import com.jhta.finalproject.vo.PetFormDataVo;
import com.jhta.finalproject.vo.PetVo;


@Controller
public class AdminPetUpdateController {
	@Autowired private PetService service;
	@Autowired private ServletContext sc;
	
	@GetMapping("/petupdate")
	public String updateForm(int pet_num,Model model) {
		PetVo vo=service.find(pet_num);
		model.addAttribute("vo",vo);
		return "lsh/adminpetupdate";
	}
	
	@PostMapping("/petupdate")
	public String update(PetFormDataVo data,Model model) {
		MultipartFile file1=data.getFile1();
		try {
			if(!file1.isEmpty()) {
				String dir=sc.getRealPath("/resources/img/pet");
				String pet_orgimg=file1.getOriginalFilename();
				String pet_saveimg=UUID.randomUUID()+"_"+pet_orgimg;
				InputStream is=file1.getInputStream();
				FileOutputStream fos=new FileOutputStream(dir + "\\" + pet_saveimg);
				FileCopyUtils.copy(is, fos);
				is.close();
				fos.close();
				PetVo vo=service.find(data.getPet_num());
				File f=new File(dir+ "\\" + vo.getPet_saveimg());
				f.delete();
				PetVo vo1=new PetVo(data.getPet_num(), data.getPet_name(), data.getPet_age(), data.getPet_color(), data.getPet_price(), data.getPet_type(), data.getPet_content(), pet_orgimg, pet_saveimg, data.getR_num(), data.getPt_id());  
				service.update(vo1);
			}else {
				PetVo vo1=new PetVo(data.getPet_num(), data.getPet_name(), data.getPet_age(), data.getPet_color(), data.getPet_price(), data.getPet_type(), data.getPet_content(), null, null, data.getR_num(), data.getPt_id());
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
