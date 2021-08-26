package com.jhta.finalproject.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jhta.finalproject.service.DelinfoService;
@Controller
public class AddressController {
	@Autowired DelinfoService delinfoService;
	@RequestMapping(value = "/members/addressList", method = { RequestMethod.POST, RequestMethod.GET }, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody HashMap<String, Object> addressList(String spageNum) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String m_id = auth.getName();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", delinfoService.submemberdellist(m_id));
		return map;
	}
	@RequestMapping(value = "/members/addressUpdate", method = { RequestMethod.POST, RequestMethod.GET }, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody HashMap<String, Object> addressUpdate(int d_num) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String m_id = auth.getName();
		HashMap<String, Object> map = new HashMap<String, Object>();
		int n1 = delinfoService.delinfoupdate1(m_id);
		int n2 = delinfoService.delinfoupdate2(d_num);
		if(n1>0&&n2>0) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}
		return map;
	}

}
