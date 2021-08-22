package com.jhta.finalproject.controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class KakaoPaySuccessControler {

	@RequestMapping("/shop/kakaoPaySuccess")
	public String kakaoPaySuccess() {
		
		
		return "/shop/kakaoPaySuccess";
	}
}
