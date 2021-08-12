package com.jhta.finalproject.controller.shop;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.BasketService;
import com.jhta.finalproject.service.BasketlistService;
import com.jhta.finalproject.service.DelinfoService;
import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.service.OrdersService;
import com.jhta.finalproject.vo.BasketVo;
import com.jhta.finalproject.vo.BasketlistVo;
import com.jhta.finalproject.vo.GoodsVo;
import com.jhta.finalproject.vo.OrdersVo;

@RestController
public class CartController {
	
	@Autowired OrdersService orderservice;
	@Autowired DelinfoService delinfoservice; 
	@Autowired BasketlistService basketlistService;
	@Autowired GoodsService goodsservice;
	@Autowired BasketService basketservice;
	
	@RequestMapping(value="/shop/cart" ,produces= {MediaType.APPLICATION_JSON_VALUE})
	public  HashMap<String, Object> cart (@RequestParam(value="p_numarray[]") List<String> p_numarray, @RequestParam(value="bk_eaarray[]") List<String> bk_eaarray,@RequestParam(value="sizearray[]") List<String> sizearray, @RequestParam(value="colorarray[]") List<String> colorarray){
	

		/*
		 * Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 * String id = auth.getName(); System.out.println(id);
		 */
		
		int d_num = delinfoservice.d_numfind("qwer");
		System.out.println("d_num : " + d_num);
		//  占쏙옙占싱듸옙 占쏙옙占실뤄옙 占쌔곤옙 占쏙옙占쏙옙 占쏙옙占싱듸옙 占쌨아쇽옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 

		int n= orderservice.insert(new OrdersVo(0, "미완료","qwer", d_num));
		int o_num = orderservice.geto_num();
		System.out.println("주문 num:" + o_num);
		int m= basketservice.insert(new BasketVo(0, 0, 0, "qwer"));
		int bs_num = basketservice.getbs_num();
		System.out.println("장바구니 num:" + bs_num);
		if(n>0 && m>0) {
			System.out.println("주문 테이블 성공 ");
			System.out.println("장바구니 생성  ");
		}
		

		for(int i=0; i<p_numarray.size(); i++) {
		
		System.out.println("p_numarray"+p_numarray.get(i));
		System.out.println("bk_eaarray"+bk_eaarray.get(i));
		int g_num = Integer.parseInt(p_numarray.get(i));
		int bk_ea = Integer.parseInt(bk_eaarray.get(i));
		
		String sizes = sizearray.get(i);
		String colors = colorarray.get(i);
		System.out.println(sizes + colors);
		
		GoodsVo vo= goodsservice.goodsfind(g_num);
		
		int x= basketlistService.insert(new BasketlistVo(0, (vo.getG_price()*bk_ea) ,bk_ea, bs_num, o_num, g_num));
		//占썲ㅂ占쌕깍옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 체크 占쌔억옙 占쏙옙 
		if(x>0) {
			System.out.println("占쏙옙占쏙옙");
		}
		}
		
		HashMap<String, Object> map= new HashMap<String, Object>();
		
		map.put("result","success");
		return map;
	}
	
}
