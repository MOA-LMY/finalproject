package com.jhta.finalproject.controller.shop;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jhta.finalproject.service.KakaoPay;
import com.jhta.finalproject.service.OrdersService;
import com.jhta.finalproject.service.PayService;
import com.jhta.finalproject.vo.AmountVO;
import com.jhta.finalproject.vo.KakaoPayApprovalVO;
import com.jhta.finalproject.vo.PayVo;

import lombok.extern.java.Log;

@Controller
@Log
public class KakaoPayController {

	@Autowired KakaoPay kakaopay;
	@Autowired PayService payservice;
	@Autowired OrdersService orderservice;
	  @PostMapping("/shop/kakaopay") public String kakaoPay(int o_num, String totalprice , String coupon) {
	  log.info("kakaoPay post............................................");
	  System.out.println(" 카카오 결제 들어온 주문번호 "+o_num +"totalprice: "+ totalprice);
	  return "redirect:" + kakaopay.kakaoPayReady(o_num,totalprice,coupon);
	  
	  }
	
	  @GetMapping("/shop/kakaoPaySuccess") 
	  public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model, int o_num ) {
	  
	  log.info("kakaoPaySuccess get............................................");
	  log.info("kakaoPaySuccess pg_token : " + pg_token);
	  
	 
	  
	  KakaoPayApprovalVO kakaoPayInfo = kakaopay.kakaoPayInfo(pg_token, o_num);
	  
	  AmountVO getTotal1 = kakaoPayInfo.getAmount();
	  int total = getTotal1.getTotal();
	  String coupon = kakaoPayInfo.getCoupon();
	  int usecoupon =0 ;
	  String p_methods  = kakaoPayInfo.getPayment_method_type();
	 
	  if(coupon.equals("undefined")) {
		  usecoupon=0;
	  }else {
		  usecoupon=1;
	  }
	  payservice.insert(new PayVo(0, p_methods, null, total, usecoupon, o_num));
	  orderservice.o_proccessupdate(o_num);
	  
	  model.addAttribute("info", kakaoPayInfo);
	  model.addAttribute("coupon", coupon);
	  
	  System.out.println("o_num "+o_num);
	  System.out.println("p_methods:"+ p_methods);
	  System.out.println("coupon:"+ coupon);
	  System.out.println("getTotal: "+getTotal1.getTotal());
	  
	  System.out.println("2번");
	  }
	 
}
