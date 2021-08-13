package com.jhta.finalproject.controller.shop;

import java.security.Provider.Service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jhta.finalproject.service.BasketService;
import com.jhta.finalproject.service.BasketlistService;
import com.jhta.finalproject.service.DelinfoService;
import com.jhta.finalproject.service.GcsService;
import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.service.OrdersService;
import com.jhta.finalproject.vo.BasketVo;
import com.jhta.finalproject.vo.BasketlistVo;
import com.jhta.finalproject.vo.GoodsVo;
import com.jhta.finalproject.vo.OrdersVo;

@Controller
public class AddToCartListController {
	@Autowired GoodsService goodsService;
	@Autowired DelinfoService delinfoservice; 
	@Autowired BasketService basketService;
	@Autowired BasketlistService basketlistService;
	@Autowired OrdersService ordersService;
	@Autowired GcsService gcsService;
	
	@RequestMapping("/shop/add_to_cart_list")
	public String addToCartList(String [] color,String [] size,String [] count,String [] price,String bs_price,String [] c_subnum,String [] sz_ssubnum,int g_num,String g_saveimg,Model model) {
	//	String [] sizelist = null;
		for(String c : color) {
			
		System.out.println("컬러배열:"+c);
		}
		for(String s : size ) {
			System.out.println("사이즈배열:"+s);
		}
		for(String cs : count) {
			System.out.println("수량배열:"+cs);
		}
		for(String p : price) {
			System.out.println("가격배열:"+p);
		}
		for(String cn : c_subnum) {
			System.out.println("사이즈서브번호배열:"+cn);
		}
		for(String szn : sz_ssubnum) {
			System.out.println("컬러서브번호배열:"+szn);
		}
		
		GoodsVo vo = goodsService.goodsfind(g_num);
		System.out.println("goods상품정보:"+vo);
		
	//	ArrayList<String> list = new ArrayList<String>();
		
		
		System.out.println("img넘어옴"+g_saveimg);
		int d_num = delinfoservice.d_numfind2("key1004");
		System.out.println("d_num넘어옴:"+d_num);
		
		int order = ordersService.insert(new OrdersVo(0, "미처리","key1004", d_num));
		int o_num = ordersService.geto_num();
		System.out.println("o_num넘어옴:"+o_num);
		int basket = basketService.insert(new BasketVo(0,0,0,"key1004"));
		int bs_num = basketService.getbs_num();
		
		System.out.println("bs_num넘어옴:"+bs_num);
		System.out.println(order);
		System.out.println(basket);
		if(order>0 && basket>0) {
			System.out.println("값들 인서트잘됨");
		}
		System.out.println(color.length);
		
	
		for(int i=0; i<color.length; i++) {
			System.out.println("price배열"+color[i] );	
			System.out.println("price배열"+size[i]);
			System.out.println("price배열"+count[i]);
			System.out.println("price배열"+price[i]);
			
			String colors = color[i];
			String sizes = size[i];
			
			//list.add(size[i]);
			int bk_ea = Integer.parseInt( count[i]);
			int bk_totalprice = Integer.parseInt(price[i]);
			int c_ssubnum1 = Integer.parseInt(c_subnum[i]);
			int sz_ssubnum1 = Integer.parseInt(sz_ssubnum[i]);
			
			System.out.println(g_num);
			System.out.println(c_ssubnum1 );
			System.out.println(sz_ssubnum1);
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("g_num",g_num);
			map.put("c_subnum",c_ssubnum1);
			map.put("sz_ssubnum",sz_ssubnum1);
			
		 int gcs_num =  gcsService.Select_Gcsnum(map);
			
		 
			int basketL = basketlistService.insert(new BasketlistVo(0,bk_totalprice ,bk_ea, bs_num, o_num, gcs_num));
				
		}
	//	int basketlist = basketlistService.insert(new BasketlistVo(0, order, basket, bs_num, o_num, bs_num))
	//	System.out.println("사이즈리스트값:"+list);
		
	/*
		System.out.println(g_num);
		GoodsVo vo2 = goodsService.goodsfind(g_num);
		
		goodsService.goodsfind(g_num);
		*/
				
		
	//	model.addAttribute("list", list);
		model.addAttribute("g_saveimg",g_saveimg);
		model.addAttribute("vo",vo);
		return "/shop/add_to_cart_list";
	}
}
