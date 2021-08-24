package com.jhta.finalproject.controller;

import java.sql.Date;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jhta.finalproject.page.PageUtil;
import com.jhta.finalproject.service.ReservationService;
import com.jhta.finalproject.vo.ReservationVo;

@Controller
public class ReservationController {
	@Autowired ReservationService reservationService;
	@RequestMapping(value = "/reservation/insert", method = { RequestMethod.POST, RequestMethod.GET }, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody HashMap<String, Object> insert(Date date,int pet_num){
		HashMap<String, Object> map = new HashMap<String, Object>();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = auth.getName();
		ReservationVo vo = new ReservationVo(0,0,date,id,pet_num);
		
		int n = reservationService.insert(vo);
		if(n>0) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}
		return map;
	}
	@RequestMapping(value = "/members/reservationList", method = { RequestMethod.POST, RequestMethod.GET }, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody HashMap<String, Object> reservationList(String spageNum) {
		int pageNum=1;
		if(spageNum!=null) {
			pageNum = Integer.parseInt(spageNum);
		}
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String m_id = auth.getName();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("m_id", m_id);
		PageUtil pu = new PageUtil(pageNum, 5, 10, reservationService.countAll(map));
		map.put("startRow", pu.getStartRow());
		map.put("endRow", pu.getEndRow());
		map.put("list", reservationService.list(map));
		map.put("pu",pu);
		return map;
	}
	@RequestMapping(value = "/members/reservationDelete", method = { RequestMethod.POST}, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody HashMap<String, Object> delete(int r_num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		int n = reservationService.delete(r_num);
		if(n>0) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}
		return map;
	}
}
