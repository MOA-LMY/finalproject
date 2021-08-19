package com.jhta.finalproject.controller.shop;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.GcsService;
import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.service.OrderlistService;
import com.jhta.finalproject.vo.Gcs3Vo;
import com.jhta.finalproject.vo.GoodOrderlistGcsVo;
import com.jhta.finalproject.vo.GoodsVo;
import com.jhta.finalproject.vo.OrdersVo;

@RestController
public class OrderlistUpdateController {
	
	@Autowired GcsService gcsservice;
	@Autowired OrderlistService orderlistservice;
	@Autowired GoodsService goodservice; 
	@RequestMapping(value="/shop/orderlistupdate" , produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> orderlistupdate(String sizes,int colors,int g_num,int ol_ea,int o_num,int ol_num, int gcs_num){
		System.out.println("asdasdasdasdasdsadasdasdasdas 넘어놈 ");
		HashMap<String, Object> map = new HashMap<String, Object>(); 
		System.out.println("sizes : "+sizes + " colors:"+colors+" g_num: "+g_num+" ol_ea: "+ol_ea + " o_num : "+ o_num + " ol_num : "+ ol_num +" gcs_num: "+ gcs_num);
		int sz_ssubnum = 0; 
		String trimsizes = sizes.trim(); 
		if(trimsizes.equals("S")) {
			sz_ssubnum =1; 
		}else if(trimsizes.equals("M")) {
			sz_ssubnum = 2; 
		}else if(trimsizes.equals("L")) {
			sz_ssubnum = 3; 
		}else {
			sz_ssubnum = 4; 
		}
		System.out.println("@@@@@@@@@@@@@@@sz_snum : "+sz_ssubnum);
		map.put("g_num", g_num);
		map.put("c_subnum", colors);
		map.put("sz_ssubnum", sz_ssubnum);
		
		Gcs3Vo vo =  gcsservice.findgcsvo(map);
		
		GoodsVo goodvo = goodservice.goodsfind(g_num);
		int privce = goodvo.getG_price();
		int ol_totalprice = privce * ol_ea ;
		
		System.out.println(vo.getG_num() + " " + vo.getGcs_num() +" "+ vo.getC_subnum()+" "+vo.getSz_ssubnum()+" ol_totalprice :"+ol_totalprice);
		
		HashMap<String, Object> orderlistmap = new HashMap<String, Object>(); 
		orderlistmap.put("gcs_num", vo.getGcs_num());
		orderlistmap.put("ol_num",ol_num );
		orderlistmap.put("ol_ea",ol_ea );
		orderlistmap.put("ol_totalprice",ol_totalprice );
		
		int n = orderlistservice.orderlistgscnumupdate(orderlistmap);
		if(n>0) {
			System.out.println("성공");
		}
		HashMap<String, Object> map1 = new HashMap<String, Object>(); 
		/*
		 * OrdersVo newordervo= orderlistservice.neworder("qwer");
		 * List<GoodOrderlistGcsVo> neworderlist =
		 * orderlistservice.neworderlist(newordervo.getO_num()); map1.put("vo", goodvo);
		 * map1.put("o_num",newordervo.getO_num()); map1.put("neworderlist",
		 * neworderlist);
		 */
		return map1; 
	}
}
