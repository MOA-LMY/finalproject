package com.jhta.finalproject.controller.shop;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.finalproject.service.DelinfoService;
import com.jhta.finalproject.service.EcEventCouponService;
import com.jhta.finalproject.service.MembersService;
import com.jhta.finalproject.service.OrderlistService;
import com.jhta.finalproject.service.OrdersService;
import com.jhta.finalproject.vo.EcEventCouponboxVo;
import com.jhta.finalproject.vo.GoodOrderlistGcsVo;
import com.jhta.finalproject.vo.MemberDelVo;
import com.jhta.finalproject.vo.MembersVo;
import com.jhta.finalproject.vo.OrderListVo;
import com.jhta.finalproject.vo.OrdersVo;

@Controller
public class Order_2Controller {
	@Autowired OrderlistService orderlistservice;
	@Autowired DelinfoService delinfoservice;
	@Autowired EcEventCouponService eceventcouponserive;
	@Autowired MembersService memberservice;
	@RequestMapping("/shop/goods_order2")
	
	public String orderlist(Model model) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = auth.getName();

		int orderprice =0; 
		int discount =0;  
		int point =0; 
		int totalprice=0; 
		OrdersVo newordervo= orderlistservice.neworder(id);
		
		HashMap<String, Object> map = new HashMap<String, Object>(); 
		
		List<GoodOrderlistGcsVo> neworderlist = orderlistservice.neworderlist(newordervo.getO_num());
		
		System.out.println("neworderlist 사이즈 : "+neworderlist.size());		
		
		List<EcEventCouponboxVo> eceventcouponlist = eceventcouponserive.eceventcouponlist(id);
	
		List<MemberDelVo> submemberdellist = delinfoservice.submemberdellist(id);
		MemberDelVo memberdelinfo = delinfoservice.memberdelinfo(id); // 회원 아이디 추출하여 넣을것 

		for(GoodOrderlistGcsVo vo : neworderlist) {
			
			System.out.println(" getOl_totalprice : "+vo.getOl_totalprice());
			orderprice += vo.getOl_totalprice();
		}
		
		MembersVo membervo = memberservice.find(id);
		
		totalprice = orderprice - discount; 
		model.addAttribute("membervo",membervo);
		model.addAttribute("eceventcouponlist",eceventcouponlist);
		model.addAttribute("orderprice",orderprice);
		model.addAttribute("discount",discount);
		model.addAttribute("point",point);
		model.addAttribute("totalprice",totalprice);
		model.addAttribute("o_num",newordervo.getO_num());
		model.addAttribute("neworderlist", neworderlist);
		model.addAttribute("memberdelinfo", memberdelinfo);
		model.addAttribute("submemberdellist", submemberdellist);
		
		return "/shop/goods_order";
			
		}
}
