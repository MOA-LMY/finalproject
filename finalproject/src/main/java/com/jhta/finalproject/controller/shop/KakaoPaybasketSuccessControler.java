package com.jhta.finalproject.controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class KakaoPaybasketSuccessControler {

	@RequestMapping("/shop/kakaoPaybasketSuccess")
	public String kakaoPaySuccess() {
		
		
		return "/shop/kakaoPaybasketSuccess";
	}
}
