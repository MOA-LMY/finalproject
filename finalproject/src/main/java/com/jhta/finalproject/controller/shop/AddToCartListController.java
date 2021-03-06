package com.jhta.finalproject.controller.shop;

import java.security.Provider.Service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jhta.finalproject.service.AddToCartService;
import com.jhta.finalproject.service.BasketService;
import com.jhta.finalproject.service.BasketlistService;
import com.jhta.finalproject.service.DelinfoService;
import com.jhta.finalproject.service.GcsService;
import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.service.OrdersService;
import com.jhta.finalproject.vo.AddToCartVo;
import com.jhta.finalproject.vo.BasketVo;
import com.jhta.finalproject.vo.BasketlistVo;
import com.jhta.finalproject.vo.GoodsVo;
import com.jhta.finalproject.vo.OrdersVo;
import com.jhta.finalproject.vo.UpdateBkEaVo;

@Controller
public class AddToCartListController {
	@Autowired GoodsService goodsService;
	@Autowired DelinfoService delinfoservice; 
	@Autowired BasketService basketService;
	@Autowired BasketlistService basketlistService;
	@Autowired OrdersService ordersService;
	@Autowired GcsService gcsService;
	@Autowired  AddToCartService addtocartService;
	
	@RequestMapping(value="/shop/add_to_cart_lists")
	public String addToCartList(String [] color,String [] size,String [] count,String [] price,String bs_price,String [] c_subnum,String [] sz_ssubnum,int g_num,String g_saveimg, Model model) {
	
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	String id = auth.getName();
	System.out.println("id :" + id);
	model.addAttribute("id", id);
		//	String [] sizelist = null;
		for(String c : color) {
			
		System.out.println("???????????????????????????:"+c);
		}
		for(String s : size ) {
			System.out.println("??????????????????????????????????????????:"+s);
		}
		for(String cs : count) {
			System.out.println("?????????????????????????????????:"+cs);
		}
		for(String p : price) {
			System.out.println("?????????????????????????????????:"+p);
		}
		for(String cn : c_subnum) {
			System.out.println("????????????????????????????????????????????????????????????????????????:"+cn);
		}
		for(String szn : sz_ssubnum) {
			System.out.println("???????????????????????????????????????????????????????????????:"+szn);
		}
		
		
		
	//	ArrayList<String> list = new ArrayList<String>();
		
		


		System.out.println("img???????????????????????????"+g_saveimg);

		int d_num = delinfoservice.d_numfind2(id);
		System.out.println("d_num???????????????:"+d_num);





		int order = ordersService.insert(new OrdersVo(0, "?????????",id, d_num));



		int o_num = ordersService.geto_num();


		System.out.println("o_num?????????????????????:"+o_num);
		int basket = basketService.insert(new BasketVo(0,0,0,id));


		System.out.println("o_num??????????????????:"+o_num);


		int bs_num = basketService.getbs_num();
		
		System.out.println("bs_num???????????????????????????:"+bs_num);
		System.out.println(order);
		System.out.println(basket);
		if(order>0 && basket>0) {
			System.out.println("??????????????? ?????????????????????????????????????????????");
		}
		System.out.println(color.length);
		
	
		for(int i=0; i<color.length; i++) {
			System.out.println("color???"+color[i] );	
			System.out.println("sizer???"+size[i]);
			System.out.println("??????????????????"+count[i]);
			System.out.println("pricer???"+price[i]);
			
			String colors = color[i];
			String sizes = size[i];
			
			
			//list.add(size[i]);
			int bk_ea = Integer.parseInt( count[i]);
			int bk_totalprice = Integer.parseInt(price[i]);
			int c_subnum1 = Integer.parseInt(c_subnum[i]);
			int sz_ssubnum1 = Integer.parseInt(sz_ssubnum[i]);
			
			System.out.println(g_num);
			System.out.println(c_subnum1 );
			System.out.println(sz_ssubnum1);
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			
			
			map.put("g_num",g_num);
			map.put("c_subnum",c_subnum1);
			map.put("sz_ssubnum",sz_ssubnum1);
		
			HashMap<String, Object> map1 = new HashMap<String, Object>();
			
			map1.put("g_num",g_num);
			map1.put("c_subnum",c_subnum1);
			map1.put("sz_ssubnum",sz_ssubnum1);
			
			
			HashMap<String, Object> map2 = new HashMap<String, Object>();
			map2.put("g_num",g_num);
			map2.put("c_subnum",c_subnum1);
			map2.put("sz_ssubnum",sz_ssubnum1);;
			
			HashMap<String, Object> map3 = new HashMap<String, Object>();
			map3.put("g_num",g_num);
			map3.put("c_subnum",c_subnum1);
			map3.put("sz_ssubnum",sz_ssubnum1);
			
			
		 int gcs_num1 =  gcsService.Select_Gcsnum(map);
		 if(gcs_num1>0) {
			 System.out.println("gcs_num1");
		 }
		 int c_subnums = gcsService.Select_Csubnum(map1);
		 if(c_subnums>0) {
			 System.out.println("c_subnums");
		 }
		 int sz_ssubnums = gcsService.Select_Ssubnum(map2);
		 if(sz_ssubnums>0) {
			 System.out.println("sz_ssubnums");
		 }
		 int g_nums= gcsService.Select_Gnum(map3);
		 if(g_nums>0) {
			 System.out.println("g_nums");
		 }
		
		 System.out.println("@@@@@@@@@@@@@@@@@@@@@2"+g_num);
		 System.out.println(c_subnum1);
		 System.out.println(sz_ssubnum1);
		 
		 System.out.println("????????????gn"+g_nums);
		 System.out.println("????????????zn"+c_subnums);
		 System.out.println("????????????sn"+sz_ssubnums);
	
		 
		 HashMap<String, Object> mapselectAll = new HashMap<String, Object>();
		 mapselectAll.put("m_id", id);
		 mapselectAll.put("gcs_num", gcs_num1);
		 
		 
		 	List<BasketlistVo> list = basketlistService.SelectAll(mapselectAll);
		System.out.println(list+"list???");
	
			
			 int basketL = basketlistService.insert(new BasketlistVo(0,bk_totalprice ,bk_ea, bs_num, o_num, gcs_num1)); 
			 System.out.println("??????");
	
		}
		return "redirect:/shop/add_to_cart_list";
	}
	
	@RequestMapping(value="/shop/add_to_cart_list")

	public String addToCartList(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = auth.getName();
		System.out.println("id :" + id);
		model.addAttribute("id", id);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("m_id", id);
		//GoodsVo vo = goodsService.goodsfind(g_num);
	//	System.out.println("goods???????????????????????????????????????:"+vo);
		int bs_num = basketService.getbs_num();
		System.out.println("bs_num"+bs_num);
		List<AddToCartVo> cartlistall = addtocartService.SelectAddToCartAll(map);
		List<AddToCartVo> cartlist = addtocartService.SelectAddToCart(bs_num);
		System.out.println("cartlist:"+cartlistall);
		
	//	int basketlist = basketlistService.insert(new BasketlistVo(0, order, basket, bs_num, o_num, bs_num))
	//	System.out.println("????????????????????????????????????????????????????????????:"+list);
		
	/*
		System.out.println(g_num);
		GoodsVo vo2 = goodsService.goodsfind(g_num);
		
		goodsService.goodsfind(g_num);
		*/
				
		
	//	model.addAttribute("list", list);
//		model.addAttribute("bs_num",bs_num );
		model.addAttribute("cartlistall", cartlistall);
		model.addAttribute("cartlist", cartlist);
	//	model.addAttribute("vo",vo);
		
		return "/shop/add_to_cart_list4";
	}
}
