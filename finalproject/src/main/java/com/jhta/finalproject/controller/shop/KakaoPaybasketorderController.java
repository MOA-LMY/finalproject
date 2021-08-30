package com.jhta.finalproject.controller.shop;



import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jhta.finalproject.service.BasketlistService;
import com.jhta.finalproject.service.EventService;
import com.jhta.finalproject.service.KakaoPay;
import com.jhta.finalproject.service.KakaoPaybasket;
import com.jhta.finalproject.service.MembersService;
import com.jhta.finalproject.service.OrdersService;
import com.jhta.finalproject.service.PayService;
import com.jhta.finalproject.vo.AmountVO;
import com.jhta.finalproject.vo.EventVo;
import com.jhta.finalproject.vo.KakaoPayApprovalVO;
import com.jhta.finalproject.vo.PayVo;

import lombok.extern.java.Log;

@Controller
@Log
public class KakaoPaybasketorderController {

	@Autowired KakaoPaybasket kakaopaybasket;
	@Autowired PayService payservice;
	@Autowired OrdersService orderservice;
	@Autowired MembersService memberservice; 
	@Autowired EventService eventservice; 
	@Autowired BasketlistService basketlistservice;
	@PostMapping("/shop/kakaoPaybasketorder") public String kakaoPaybasketorder(int bs_num, String totalprice , String coupon, String numberckeck) {
	  log.info("kakaoPay post............................................");
	  System.out.println(" 카카오 결제 들어온 장바구니번호번호 "+bs_num +"totalprice: "+ totalprice +"inputnumberckeck :"+numberckeck);
	  return "redirect:" + kakaopaybasket.kakaoPayReady(bs_num,totalprice,coupon,numberckeck);
	  
	  }
	
	  @GetMapping("/shop/kakaoPaybasketSuccess") 
	  public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model, int bs_num ) {
		  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		  String id = auth.getName();
	  
	  log.info("kakaoPaySuccess get............................................");
	  log.info("kakaoPaySuccess pg_token : " + pg_token);
	  
	  KakaoPayApprovalVO kakaoPayInfo = kakaopaybasket.kakaoPayInfo(pg_token, bs_num);
		 
	  AmountVO getTotal1 = kakaoPayInfo.getAmount();
	  int total = getTotal1.getTotal();
	  String coupon = kakaoPayInfo.getCoupon();
	  String snumberckeck = kakaoPayInfo.getSnumberckeck().trim();
	  
	  System.out.println("@@@@@@@@@@@@@@"+snumberckeck);
	  HashMap<String, Object> couponmap = new HashMap<String, Object>(); 
	  HashMap<String, Object> usepointmap = new HashMap<String, Object>();
	  
	  if(snumberckeck.equals("undefined")) {
		  
		  System.out.println("포인트 미사용");
		  snumberckeck="0";
	  }else {
		  int inumberckeck = Integer.parseInt(snumberckeck);
		  usepointmap.put("m_id", id);
		  usepointmap.put("m_points", inumberckeck);
		  memberservice.usepoint(usepointmap);
	  }
	  int usecoupon =0 ;
	  String p_methods  = kakaoPayInfo.getPayment_method_type();
	 
	  if(coupon.equals("undefined")) {
		  coupon ="미사용";
		  usecoupon=0;
	  }else {
		  usecoupon=1;
		  EventVo eventvo = eventservice.getinfo(coupon);
		  int point = eventvo.getE_point();
		  
		  couponmap.put("m_id", id);
		  couponmap.put("m_points", point);
		  int n =  memberservice.addpoint(couponmap);
		  if(n>0) {
			  System.out.println("포인트 적립 성공 ");
		  }
	  }
	  

	  int o_num = basketlistservice.basketlitgeto_num(bs_num);
	  System.out.println("o_num: "+o_num);
	payservice.insert(new PayVo(0, p_methods, null, total, usecoupon, o_num));
	orderservice.o_proccessupdate(o_num);
	  
	  model.addAttribute("info", kakaoPayInfo);
	  model.addAttribute("coupon", coupon);
	  model.addAttribute("o_num",o_num);
	  System.out.println("bs_num "+bs_num);
	  System.out.println("p_methods:"+ p_methods);
	  System.out.println("coupon:"+ coupon);
	  System.out.println("getTotal: "+getTotal1.getTotal());
	  
	  System.out.println("2번");
	  }
	 
}
