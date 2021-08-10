package com.jhta.finalproject.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jhta.finalproject.service.MembersService;
import com.jhta.finalproject.service.PartnersService;
import com.jhta.finalproject.vo.PartnersVo;
 
@Controller
public class PartnersController {
	@Autowired private PartnersService service;
	@Autowired private MembersService membersService;
	
	@RequestMapping(value="/partners/join",method = RequestMethod.GET)
	public String insertForm() {
		return "/partners/join";
	}
	@RequestMapping(value="/idCheck", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE})
	public @ResponseBody HashMap<String, Object> idCheck(String id){
		PartnersVo vo=service.idCheck(id);
		HashMap<String, Object> map=new HashMap<String, Object>();
		if(vo!=null) {
			map.put("using", true);
		}else {
			map.put("using", false);
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
	
	@PostMapping("/update")
	public String update(PartnersVo vo) {
		service.update(vo);
		return "result";
	}
	
	@GetMapping("/delete")
	public String delete(String id) {
		service.delete(id);
		return "redirect:/list";
	}
}
