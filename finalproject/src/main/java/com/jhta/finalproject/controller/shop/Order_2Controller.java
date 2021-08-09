package com.jhta.finalproject.controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Order_2Controller {

	@RequestMapping("/shop/goods_order2")
	public String orderlist() {
		
		
		return "/shop/goods_order";
	}
}
