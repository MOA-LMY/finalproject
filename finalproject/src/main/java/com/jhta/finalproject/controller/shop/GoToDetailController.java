package com.jhta.finalproject.controller.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.finalproject.service.GoodsService;


@Controller
public class GoToDetailController {
	@Autowired GoodsService goodsService;
	@RequestMapping("/gotodetail2")
	public String gotodetial( ) {
		return  "/shop/gotodetail2";
	}
}
