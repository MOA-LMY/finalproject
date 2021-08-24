package com.jhta.finalproject.controller.shop;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.reflection.SystemMetaObject;
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
import com.jhta.finalproject.service.GcsService;
import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.service.OrdersService;
import com.jhta.finalproject.vo.BasketVo;
import com.jhta.finalproject.vo.BasketlistVo;
import com.jhta.finalproject.vo.GoodgcsVo;
import com.jhta.finalproject.vo.GoodsVo;
import com.jhta.finalproject.vo.OrdersVo;

@RestController
public class CartController {

	@Autowired
	OrdersService orderservice;
	@Autowired
	DelinfoService delinfoservice;
	@Autowired
	BasketlistService basketlistService;
	@Autowired
	GoodsService goodsservice;
	@Autowired
	BasketService basketservice;
	@Autowired
	GcsService gcsservice;

	@RequestMapping(value = "/shop/cart", produces = { MediaType.APPLICATION_JSON_VALUE })
	public HashMap<String, Object> cart(@RequestParam(value = "p_numarray[]") List<String> p_numarray,
			@RequestParam(value = "bk_eaarray[]") List<String> bk_eaarray,
			@RequestParam(value = "sizearray[]") List<String> sizearray,
			@RequestParam(value = "colorarray[]") List<String> colorarray) {

		int d_num = delinfoservice.d_numfind("qwer");
		// System.out.println("d_num : " + d_num);

		int n = orderservice.insert(new OrdersVo(0, "미처리", "qwer", d_num));
		int o_num = orderservice.geto_num();
		// System.out.println("二쇰Ц num:" + o_num);
		int m = basketservice.insert(new BasketVo(0, 0, 0, "qwer"));
		int bs_num = basketservice.getbs_num();
		// System.out.println("�옣諛붽뎄�땲 num:" + bs_num);
		if (n > 0 && m > 0) {
			// System.out.println("二쇰Ц �뀒�씠釉� �꽦怨� ");
			// System.out.println("�옣諛붽뎄�땲 �깮�꽦 ");
		}

		int sz_ssubnum = 0;
		int c_subnum = 0;
		int p_numarrysize =p_numarray.size();
		

		System.out.println("p_num 諛곗뿴 �궗�씠利� �겕湲�: "+p_numarrysize);
		
		for (int i = 0; i < p_numarrysize; i++) {
			System.out.println("@@@@@@@@@@@�씤�뜳�뒪 "+i+"@@@@@@@@@@@�씤�뜳�뒪");
			
			int g_num = Integer.parseInt(p_numarray.get(i));
			int bk_ea = Integer.parseInt(bk_eaarray.get(i));
			System.out.println("而⑦듃濡� g_num " + g_num);
			System.out.println("而⑦듃濡� bk_ea " + bk_ea);

			//�궗�씠利�
			String sizes = sizearray.get(i);
			String trimsizes= sizes.trim();
			System.out.println("@@@@@@@@@@@@@@trimsizes@@@@@@@@@@@@@@" + trimsizes);

			if (trimsizes.equals("S")) {
				sz_ssubnum = 1;
			} else if (trimsizes.equals("M")) {
				sz_ssubnum = 2;
			} else if (trimsizes.equals("L")) {
				sz_ssubnum = 3;
			} 

			//而щ윭
			String colors = colorarray.get(i);
			System.out.println("@@@@@@@@@@@@@@colors@@@@@@@@@@@@@@" + colors);

			if (colors.equals("c-white")) {
				c_subnum = 1;
			} else if (colors.equals("c-beige")) {
				c_subnum = 2;
			} else if (colors.equals("c-yellow")) {
				c_subnum = 3;
			} else if (colors.equals("c-green")) {
				c_subnum = 4;
			} else if (colors.equals("c-pink")) {
				c_subnum = 5;
			} else if (colors.equals("c-red")) {
				c_subnum = 6;
			} else if (colors.equals("c-pupple")) {
				c_subnum = 7;
			} else if (colors.equals("c-blue")) {
				c_subnum = 8;
			} else if (colors.equals("c-grey")) {
				c_subnum = 9;
			} else if (colors.equals("c-navy")) {
				c_subnum = 10;
			} else if (colors.equals("c-black")) {
				c_subnum = 11;
			} 

			
			
			System.out.println("@@@@@@@@@蹂�寃쏀썑 @@@@@@@@@@@@");
			System.out.println("g_num而⑦듃濡� " + g_num);
			System.out.println("sz_ssubnum而⑦듃濡� " + sz_ssubnum);
			System.out.println("c_subnum而⑦듃濡� " + c_subnum);
			System.out.println("@@@@@@@@@@@@@@@@@@@@@");
			System.out.println("@@@@@@@@@@@@@@@@@@@@@");
			
			HashMap<String, Object> map1 = new HashMap<String, Object>();
					
			map1.put("g_num", g_num);
			map1.put("sz_ssubnum", sz_ssubnum);
			map1.put("c_subnum", c_subnum);
			
			
			//System.out.println("map1�뿉 put �맂 �썑 ");
			
			 GoodgcsVo vo= gcsservice.goodgcsinfo(map1);
			 System.out.println("Goodgcsinfo �떎�뻾�맂 �썑 ");
			 //GoodsVo vo= goodsservice.goodsfind(g_num);
			 System.out.println("goodgcsinfo�뿉 ���븳 vo 媛� 媛��졇 �삤湲�" );
			 System.out.println("goodgcsinfo�뿉 ���븳 vo 媛� 媛��졇 �삤湲� "+vo.getGcs_num() + " "+ vo.getG_price());
			 
			 
		int x= basketlistService.insert(new BasketlistVo(0, (vo.getG_price()*bk_ea), bk_ea, bs_num, o_num, vo.getGcs_num()));
		if(x>0) { System.out.println("�꽦怨�"); }
			 
				}

		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("result", "success");
		return map;
	}

}
