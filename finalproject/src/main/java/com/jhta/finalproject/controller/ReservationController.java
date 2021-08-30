package com.jhta.finalproject.controller;

import java.sql.Date;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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

import lombok.extern.log4j.Log4j;

@Controller
public class ReservationController {
	@Autowired ReservationService reservationService;
	Logger logger = LoggerFactory.getLogger(ReservationController.class);

 
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
	@RequestMapping(value = "/partners/reservationList", method = { RequestMethod.POST, RequestMethod.GET }, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody HashMap<String, Object> preservationList(String spageNum) {
		System.out.println("spageNum:"+spageNum);
		int pageNum=1;
		if(spageNum!=null) {
			pageNum = Integer.parseInt(spageNum);
		}
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String pt_id = auth.getName();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pt_id", "test5");
		System.out.println(pt_id);
		PageUtil pu = new PageUtil(pageNum, 5, 10, reservationService.countAll2(map));
		map.put("startRow", pu.getStartRow());
		map.put("endRow", pu.getEndRow());
		map.put("list1", reservationService.list1(map));
		map.put("pu",pu);
		return map;
	}
	@RequestMapping(value = "/partners/reservationUpdate", method = { RequestMethod.POST, RequestMethod.GET }, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody HashMap<String, Object> reservationUpdate(int r_num) {
		System.out.println("rnum"+r_num);
		reservationService.reservationUpdate(r_num);
		HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("result", "success");
		return map;
	}
	@RequestMapping(value = "/partners/reservationMinus", method = { RequestMethod.POST, RequestMethod.GET }, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody HashMap<String, Object> reservationMinus(int r_num) {
		reservationService.reservationMinus(r_num);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("result", "success");
		return map;
	}
}
