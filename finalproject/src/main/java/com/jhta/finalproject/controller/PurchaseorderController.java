package com.jhta.finalproject.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.jhta.finalproject.page.PageUtil;
import com.jhta.finalproject.service.PayService;
import com.jhta.finalproject.vo.PaypagelistVo;

@RestController

public class PurchaseorderController {
	
	@Autowired PayService payservice;
	
	@RequestMapping(value="/member/purchaseorder",produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> purchaseorder (@RequestParam(value="pageNum",defaultValue="1")int pageNum){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = auth.getName();
		
		System.out.println("pageNum"+pageNum);
		int paygetcount = payservice.paygetcount(id);
		
		PageUtil pu = new PageUtil(pageNum, 5, 10,paygetcount);
		
		HashMap<String, Object> pmap = new HashMap<String, Object>();
		pmap.put("startRowNum",pu.getStartRow());
		pmap.put("endRowNum",pu.getEndRow());
		pmap.put("m_id", id);
		List<PaypagelistVo> paypagelist = payservice.paypagelist(pmap);
		pmap.put("paypagelist", paypagelist);
		pmap.put("pu", pu);

		return pmap ; 
		
	}
}
