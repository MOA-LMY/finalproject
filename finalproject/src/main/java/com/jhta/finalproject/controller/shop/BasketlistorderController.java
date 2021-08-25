package com.jhta.finalproject.controller.shop;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.BasketlistService;
import com.jhta.finalproject.service.DelinfoService;
import com.jhta.finalproject.service.EcEventCouponService;
import com.jhta.finalproject.service.MembersService;
import com.jhta.finalproject.service.OrderlistService;
import com.jhta.finalproject.vo.BasketlistorderVo;
import com.jhta.finalproject.vo.EcEventCouponboxVo;
import com.jhta.finalproject.vo.GoodOrderlistGcsVo;
import com.jhta.finalproject.vo.MemberDelVo;
import com.jhta.finalproject.vo.MembersVo;

@Controller
public class BasketlistorderController {
	@Autowired BasketlistService basketlistservice;
	@Autowired DelinfoService delinfoservice;
	@Autowired EcEventCouponService eceventcouponserive;
	@Autowired MembersService memberservice;
	@RequestMapping(value = "/shop/basketlistorder")
	public String Basketlistorder(int bs_num, Model model) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = auth.getName();
		int orderprice =0; 
		int discount =0;  
		int point =0; 
		int totalprice=0; 
		System.out.println("들어옴" +"bs_num"+bs_num);
		
		  HashMap<String, Object> map = new HashMap<String, Object>();
		  List<BasketlistorderVo> basketlistorder = basketlistservice.basketlistorder(bs_num);
		 //basketlistorder = neworderlist
		  
		  for(BasketlistorderVo vo : basketlistorder) {
			  System.out.println( vo.getBk_num());
			 
		  }
		  List<EcEventCouponboxVo> eceventcouponlist = eceventcouponserive.eceventcouponlist(id);
			
		List<MemberDelVo> submemberdellist = delinfoservice.submemberdellist(id);
			MemberDelVo memberdelinfo = delinfoservice.memberdelinfo(id); // 회원 아이디 추출하여 넣을것 
			
			for(BasketlistorderVo vo : basketlistorder) {
				
				System.out.println("getBk_totalprice() : "+vo.getBk_totalprice());
				orderprice += vo.getBk_totalprice();
			}
			
			MembersVo membervo = memberservice.find(id);
			
			totalprice = orderprice - discount; 
			model.addAttribute("membervo",membervo);
			model.addAttribute("eceventcouponlist",eceventcouponlist);
			model.addAttribute("orderprice",orderprice);
			model.addAttribute("discount",discount);
			model.addAttribute("point",point);
			model.addAttribute("totalprice",totalprice);
			model.addAttribute("bs_num",bs_num); //
			model.addAttribute("basketlistorder", basketlistorder); //
			model.addAttribute("memberdelinfo", memberdelinfo);
			model.addAttribute("submemberdellist", submemberdellist);
			
		return "/shop/basketorder";
	}
}
