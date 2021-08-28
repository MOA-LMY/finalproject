package com.jhta.finalproject.admin.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jhta.finalproject.page.PageUtil;
import com.jhta.finalproject.service.PayService;
import com.jhta.finalproject.vo.PaypagelistVo;

@Controller
public class Admin_OrderListController {
	
	
	@Autowired PayService payservice;
	@RequestMapping(value = "/admin/order_list",method = RequestMethod.GET)
	public String order_list(@RequestParam(value="pageNum",defaultValue="1")int pageNum, Model model) {
		
		
		
		System.out.println("pageNum"+pageNum);
		int paygetcount = payservice.allpaygetcount();
		
		PageUtil pu = new PageUtil(pageNum, 10, 10, paygetcount);
		System.out.println(pu.getEndPageNum());
		HashMap<String, Object> pmap = new HashMap<String, Object>();
		pmap.put("startRowNum",pu.getStartRow());
		pmap.put("endRowNum",pu.getEndRow());
		
		List<PaypagelistVo> paymamberpagelist = payservice.paymamberpagelist(pmap);
		
		model.addAttribute("paymamberpagelist", paymamberpagelist);
		model.addAttribute("pu", pu);
		model.addAttribute("paygetcount", paygetcount);
	
		return "/admin/order_list";
	}
}
