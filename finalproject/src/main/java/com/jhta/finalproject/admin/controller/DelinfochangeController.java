package com.jhta.finalproject.admin.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.page.PageUtil;
import com.jhta.finalproject.service.OrderlistService;
import com.jhta.finalproject.service.OrdersService;
import com.jhta.finalproject.service.PayService;
import com.jhta.finalproject.vo.PaypagelistVo;

@RestController
public class DelinfochangeController {
	@Autowired OrdersService ordersservice;
	@Autowired PayService payservice;
	@RequestMapping(value = "/shop/delinfochange" ,produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> delinfochange(String pageNum, int delinfo , @RequestParam(value = "o_numArr[]") List<Integer> o_numArr ){
		
		System.out.println("java 에서 " + pageNum );
		int spageNum = Integer.parseInt(pageNum);
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		String o_proccess = "";
		System.out.println("delinfo"+ delinfo);
		if(delinfo == 0) {
			o_proccess = "상품준비중";
		}else if(delinfo == 1) {
			o_proccess = "배송준비중";
		}else if(delinfo == 2) {
			o_proccess = "배송중";
		}else if(delinfo == 3) {
			o_proccess = "배송완료";
		}
		map.put("o_proccess", o_proccess);
		int o_numArrsize = o_numArr.size();
		for(int i=0; i<o_numArrsize; i++) {
			System.out.println("o_numArr"+ o_numArr.get(i));
			map.put("o_num", o_numArr.get(i));
			int n = ordersservice.o_proccessupdate2(map);
			if(n>0) {
				System.out.println("수정완료");
				}
			}
		
		System.out.println("pageNum"+spageNum);
		int paygetcount = payservice.allpaygetcount();
		
		PageUtil pu = new PageUtil(spageNum, 10, 10, paygetcount);
		System.out.println(pu.getEndPageNum());
		HashMap<String, Object> pmap = new HashMap<String, Object>();
		pmap.put("startRowNum",pu.getStartRow());
		pmap.put("endRowNum",pu.getEndRow());
		
		List<PaypagelistVo> paymamberpagelist = payservice.paymamberpagelist(pmap);
		
		
		pmap.put("paymamberpagelist",paymamberpagelist);
		pmap.put("pu", pu);
		pmap.put("paygetcount", paygetcount);
		
		return pmap; 
	}
	
}
