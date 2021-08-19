package com.jhta.finalproject.controller.shop;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.finalproject.service.DelinfoService;
import com.jhta.finalproject.service.OrderlistService;
import com.jhta.finalproject.service.OrdersService;
import com.jhta.finalproject.vo.GoodOrderlistGcsVo;
import com.jhta.finalproject.vo.MemberDelVo;
import com.jhta.finalproject.vo.OrderListVo;
import com.jhta.finalproject.vo.OrdersVo;

@Controller
public class Order_2Controller {
	@Autowired OrderlistService orderlistservice;
	@Autowired DelinfoService delinfoservice;
	
	@RequestMapping("/shop/goods_order2")
	public String orderlist(Model model) {
		
		
		OrdersVo newordervo= orderlistservice.neworder("qwer");
		
		HashMap<String, Object> map = new HashMap<String, Object>(); 
		
		List<GoodOrderlistGcsVo> neworderlist = orderlistservice.neworderlist(newordervo.getO_num());
		
		System.out.println("neworderlist 사이즈 : "+neworderlist.size());		
		
		MemberDelVo memberdelinfo = delinfoservice.memberdelinfo("qwer"); // 회원 아이디 추출하여 넣을것 
		List<MemberDelVo> submemberdellist = delinfoservice.submemberdellist("qwer");
		for(MemberDelVo vo : submemberdellist) {
			
			System.out.println(" getD_num : "+vo.getD_num());
		}
		model.addAttribute("o_num",newordervo.getO_num());
		model.addAttribute("neworderlist", neworderlist);
		model.addAttribute("memberdelinfo", memberdelinfo);
		model.addAttribute("submemberdellist", submemberdellist);
		
		return "/shop/goods_order";
			
		}
}
