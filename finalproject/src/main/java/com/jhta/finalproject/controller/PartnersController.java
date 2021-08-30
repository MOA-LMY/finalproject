package com.jhta.finalproject.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jhta.finalproject.service.MembersService;
import com.jhta.finalproject.service.PartnersService;
import com.jhta.finalproject.vo.PartnersVo;
import com.jhta.finalproject.vo.PetVo;
import com.jhta.finalproject.vo.ReservationVo;
 
@Controller
public class PartnersController {
	@Autowired private PartnersService service;
	@Autowired private MembersService membersService;
	@Autowired private ServletContext sc;

	
	@RequestMapping(value="/partners/join",method = RequestMethod.GET)
	public String insertForm() {
		return "/partners/join";
	}
	@RequestMapping(value="/idCheck", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE})
	public @ResponseBody HashMap<String, Object> idCheck(String id){
		HashMap<String, Object> map=new HashMap<String, Object>();

			int a =service.idCheck(id);
			System.out.println("partners" + a);
			int b = membersService.isMember(id);
			System.out.println("members" +b);
			if(a==0&&b==0) {
				map.put("using", false);				
			}else {
				map.put("using", true);
			}

		return map;
	}
	
	@RequestMapping(value="/insert",method = RequestMethod.POST)
	public String insert(PartnersVo vo) {
		try {
			service.insert(vo);
			return "result";
		}catch(Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	
	@GetMapping("/update")
	public ModelAndView updateForm(String id) {
		ModelAndView mv=new ModelAndView("update");
		mv.addObject("vo",service.select(id));
		return mv;
	}
	
	@PostMapping("/partners/update")
	public String update(PartnersVo vo) {
		service.update(vo);
		return "result";
	}
	
	@GetMapping("/delete")
	public String delete(String id) {
		service.delete(id);
		return "redirect:/list";
	}
	@GetMapping("/partners/mypage")
	public String partnersMypage() {
		return "partners/mypage";
	}
	@GetMapping("/partners/editInfo")
	public String partnersEditInfo(Model model) {
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		String id = auth.getName();
		String id = "test5";
		PartnersVo vo = service.select(id);
		model.addAttribute("vo", vo);
		return "partners/editInfo";
	}
	@GetMapping("partners/petinsert")
	public String partnerspetinsert() {
		return "partners/petinsert";
	}
	@PostMapping("partners/petinsert")
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
			PetVo vo=new PetVo(r_num, pet_name, pet_age, pet_color, pet_price, pet_type, pet_content, pet_orgimg, pet_saveimg, pt_id);
			service.insert(vo);
			model.addAttribute("code","success");
			
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("code","fail");
		}	
		return "test/hyuntest";
	}
	
	@GetMapping("/partners/petlist")
	public ModelAndView petlist() {
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		String id = auth.getName();
		String pt_id = "test5";
		List<PetVo> petvo = service.petlist(pt_id);
		
		ModelAndView mv = new ModelAndView("/partners/petlist");
		mv.addObject("petvo", petvo);
		
		return mv;
	}
	
//	@GetMapping("/partners/reservationPage")
//	public String  reservationPage() {
//		return "partners/reservation";
//	}
//	@RequestMapping(value = "/partners/reservation", produces="application/json;charset=UTF-8", method=RequestMethod.GET)
//	@ResponseBody
//	public List<ReservationVo> reservation() {
//		List<ReservationVo> list = service.reservationList();
//		return list;
//	}
//	
//	@GetMapping("/partners/reservationUpdate")
//	public String reservationUpdate(int r_num) {
//		service.updateReserve(r_num);
//		return "redirect:list";
//	}
}
