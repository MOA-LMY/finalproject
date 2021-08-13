package com.jhta.finalproject.controller.shop;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.DelinfoService;
import com.jhta.finalproject.service.GcsService;
import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.service.OrderlistService;
import com.jhta.finalproject.service.OrdersService;
import com.jhta.finalproject.vo.GoodgcsVo;
import com.jhta.finalproject.vo.GoodsVo;
import com.jhta.finalproject.vo.OrderListVo;
import com.jhta.finalproject.vo.OrdersVo;



@RestController
public class OrderController {
	@Autowired GcsService gcsservice;
	@Autowired OrdersService orderservice;
	@Autowired DelinfoService delinfoservice;
	@Autowired OrderlistService orderlistservice;
	@Autowired GoodsService goodsservice;
	@RequestMapping(value="/shop/order",produces= {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> order(@RequestParam(value = "p_numarray[]") List<String> p_numarray,
			@RequestParam(value = "bk_eaarray[]") List<String> bk_eaarray,
			@RequestParam(value = "sizearray[]") List<String> sizearray,
			@RequestParam(value = "colorarray[]") List<String> colorarray){
		
		HashMap<String, Object> map =new HashMap<String, Object>();
		
		int d_num = delinfoservice.d_numfind("qwer");
		System.out.println("d_num : " + d_num);
		

		int n= orderservice.insert(new OrdersVo(0, "미완료","qwer", d_num));
		int o_num = orderservice.geto_num();
		System.out.println("o_num :" + o_num);
		
		int sz_ssubnum = 0;
		int c_subnum = 0;
		int p_numarrysize =p_numarray.size();
		System.out.println("p_num 배열 사이즈 크기: "+p_numarrysize);

		
		for(int i=0; i<p_numarrysize; i++) {
			
			int g_num = Integer.parseInt(p_numarray.get(i));
			int bk_ea = Integer.parseInt(bk_eaarray.get(i));
			System.out.println("컨트롤 g_num " + g_num);
			System.out.println("컨트롤 bk_ea " + bk_ea);

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

			//컬러
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

			System.out.println("@@@@@@@@@변경후 @@@@@@@@@@@@");
			System.out.println("g_num컨트롤 " + g_num);
			System.out.println("sz_ssubnum컨트롤 " + sz_ssubnum);
			System.out.println("c_subnum컨트롤 " + c_subnum);
			System.out.println("@@@@@@@@@@@@@@@@@@@@@");
			System.out.println("@@@@@@@@@@@@@@@@@@@@@");

			HashMap<String, Object> map1 = new HashMap<String, Object>();
			
			map1.put("g_num", g_num);
			map1.put("sz_ssubnum", sz_ssubnum);
			map1.put("c_subnum", c_subnum);

			 GoodgcsVo vo= gcsservice.goodgcsinfo(map1);
			 System.out.println("Goodgcsinfo 실행된 후 ");

			 System.out.println("goodgcsinfo에 대한 vo 값 가져 오기" );
			 System.out.println("goodgcsinfo에 대한 vo 값 가져 오기 "+vo.getGcs_num() + " "+ vo.getG_price());

			int x = orderlistservice.insert(new OrderListVo(0, (bk_ea*vo.getG_price()), bk_ea, o_num, vo.getGcs_num()));
			//orderlist 부투 수정 해야 함 maapper service 다 
			
			if(x>0) {
				System.out.println("주문완료");
					}
			}
		
		map.put("result","success");
		return map;
	}
}
