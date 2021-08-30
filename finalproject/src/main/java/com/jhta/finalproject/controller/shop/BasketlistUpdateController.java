package com.jhta.finalproject.controller.shop;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.BasketlistService;
import com.jhta.finalproject.service.GcsService;
import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.service.OrderlistService;
import com.jhta.finalproject.vo.BasketlistorderVo;
import com.jhta.finalproject.vo.Gcs3Vo;
import com.jhta.finalproject.vo.GoodOrderlistGcsVo;
import com.jhta.finalproject.vo.GoodsVo;
import com.jhta.finalproject.vo.OrdersVo;

@RestController
public class BasketlistUpdateController {
	
	@Autowired GcsService gcsservice;
	@Autowired BasketlistService basketlistservice;
	@Autowired GoodsService goodservice; 
	@RequestMapping(value="/shop/basketlistupdate" , produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> basketlistupdate(String sizes,int colors,int g_num,int bk_ea,int bs_num,int bk_num, int gcs_num){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = auth.getName();

		System.out.println("asdasdasdasdasdsadasdasdasdas 넘어놈 ");
		HashMap<String, Object> map = new HashMap<String, Object>(); 
		System.out.println("sizes : "+sizes + " colors:"+colors+" g_num: "+g_num+" bk_ea: "+bk_ea + " bs_num : "+ bs_num + " bk_num : "+ bk_num +" gcs_num: "+ gcs_num);
		int sz_ssubnum = 0; 
		String trimsizes = sizes.trim(); 
		if(trimsizes.equals("S")) {
			sz_ssubnum =1; 
		}else if(trimsizes.equals("M")) {
			sz_ssubnum = 2; 
		}else if(trimsizes.equals("L")) {
			sz_ssubnum = 3; 
		}else {
			sz_ssubnum = 4; 
		}
		System.out.println("@@@@@@@@@@@@@@@sz_snum : "+sz_ssubnum);
		map.put("g_num", g_num);
		map.put("c_subnum", colors);
		map.put("sz_ssubnum", sz_ssubnum);
		
		Gcs3Vo vo =  gcsservice.findgcsvo(map);
		
		GoodsVo goodvo = goodservice.goodsfind(g_num);
		int privce = goodvo.getG_price();
		int bk_totalprice = privce * bk_ea ;
		
		System.out.println(vo.getG_num() + " " + vo.getGcs_num() +" "+ vo.getC_subnum()+" "+vo.getSz_ssubnum()+" bk_totalprice :"+bk_totalprice);
		
		HashMap<String, Object> basketlistmap = new HashMap<String, Object>(); 
		basketlistmap.put("gcs_num", vo.getGcs_num());
		basketlistmap.put("bk_num",bk_num );
		basketlistmap.put("bk_ea",bk_ea );
		basketlistmap.put("bk_totalprice",bk_totalprice );
		
		int n = basketlistservice.bsketlistgscnumupdate(basketlistmap);
		if(n>0) {
			System.out.println("성공");
		}
		HashMap<String, Object> map1 = new HashMap<String, Object>(); 
		int basketprice =0; 
		int discount =0;  
		int totalprice=0;
		
		 List<BasketlistorderVo> basketlist =basketlistservice.basketlistorder(bs_num); 
		 
		 for(BasketlistorderVo basketlistorderVo : basketlist) {
				
				System.out.println(" getBk_totalprice : "+basketlistorderVo.getBk_totalprice());
				basketprice += basketlistorderVo.getBk_totalprice();
			}
			
			totalprice = basketprice - discount; 
			map1.put("basketprice",basketprice);
			map1.put("discount",discount);
			map1.put("totalprice",totalprice);
		 
		return map1; 
	}
}
