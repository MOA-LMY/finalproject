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
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = auth.getName();
		int d_num = delinfoservice.d_numfind(id);
		// System.out.println("d_num : " + d_num);

		int n = orderservice.insert(new OrdersVo(0, "?????????", id, d_num));
		int o_num = orderservice.geto_num();
		// System.out.println("???????? num:" + o_num);
		int m = basketservice.insert(new BasketVo(0, 0, 0, id));
		int bs_num = basketservice.getbs_num();
		// System.out.println("????????????????????? num:" + bs_num);
		if (n > 0 && m > 0) {
			// System.out.println("???????? ?????????????????? ???????????? ");
			// System.out.println("????????????????????? ???????????? ");
		}

		int sz_ssubnum = 0;
		int c_subnum = 0;
		int p_numarrysize =p_numarray.size();
		

		System.out.println("p_num ????????? ?????????????????? ????????????: "+p_numarrysize);
		
		for (int i = 0; i < p_numarrysize; i++) {
			System.out.println("@@@@@@@@@@@?????????????????? "+i+"@@@@@@@@@@@??????????????????");
			
			int g_num = Integer.parseInt(p_numarray.get(i));
			int bk_ea = Integer.parseInt(bk_eaarray.get(i));
			System.out.println("??????????????? g_num " + g_num);
			System.out.println("??????????????? bk_ea " + bk_ea);

			//??????????????????
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

			//????????
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

			
			
			System.out.println("@@@@@@@@@??????????????? @@@@@@@@@@@@");
			System.out.println("g_num??????????????? " + g_num);
			System.out.println("sz_ssubnum??????????????? " + sz_ssubnum);
			System.out.println("c_subnum??????????????? " + c_subnum);
			System.out.println("@@@@@@@@@@@@@@@@@@@@@");
			System.out.println("@@@@@@@@@@@@@@@@@@@@@");
			
			HashMap<String, Object> map1 = new HashMap<String, Object>();
					
			map1.put("g_num", g_num);
			map1.put("sz_ssubnum", sz_ssubnum);
			map1.put("c_subnum", c_subnum);
			
			
			//System.out.println("map1?????? put ?????? ?????? ");
			
			 GoodgcsVo vo= gcsservice.goodgcsinfo(map1);
			 System.out.println("Goodgcsinfo ?????????????????? ?????? ");
			 //GoodsVo vo= goodsservice.goodsfind(g_num);
			 System.out.println("goodgcsinfo?????? ???????????? vo ?????? ???????????? ????????????" );
			 System.out.println("goodgcsinfo?????? ???????????? vo ?????? ???????????? ???????????? "+vo.getGcs_num() + " "+ vo.getG_price());
			 
			 
		int x= basketlistService.insert(new BasketlistVo(0, (vo.getG_price()*bk_ea), bk_ea, bs_num, o_num, vo.getGcs_num()));
		if(x>0) { System.out.println("????????????"); }
			 
				}

		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("result", "success");
		return map;
	}

}
