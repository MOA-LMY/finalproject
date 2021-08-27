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
	public String addToCartList(String [] color,String [] size,String [] count,String [] price,String bs_price,String [] c_subnum,String [] sz_ssubnum,int g_num,String g_saveimg) {
	//	String [] sizelist = null;
		for(String c : color) {
			
		System.out.println("�뚎됱쑎獄쏄퀣肉�:"+c);
		}
		for(String s : size ) {
			System.out.println("占쎄텢占쎌뵠筌앸뜄媛숋옙肉�:"+s);
		}
		for(String cs : count) {
			System.out.println("占쎈땾占쎌쎗獄쏄퀣肉�:"+cs);
		}
		for(String p : price) {
			System.out.println("揶쏉옙野꺿뫖媛숋옙肉�:"+p);
		}
		for(String cn : c_subnum) {
			System.out.println("占쎄텢占쎌뵠筌앸뜆苑뚪뇡�슢苡뀐옙�깈獄쏄퀣肉�:"+cn);
		}
		for(String szn : sz_ssubnum) {
			System.out.println("�뚎됱쑎占쎄퐣�뇡�슢苡뀐옙�깈獄쏄퀣肉�:"+szn);
		}
		
		
		
	//	ArrayList<String> list = new ArrayList<String>();
		
		


		System.out.println("img占쎄퐜占쎈선占쎌긾"+g_saveimg);
		int d_num = delinfoservice.d_numfind2("qwer");
		System.out.println("d_num占쎄퐜占쎈선占쎌긾:"+d_num);



		int order = ordersService.insert(new OrdersVo(0, "미완료","qwer", d_num));


		int o_num = ordersService.geto_num();

		System.out.println("o_num占쎄퐜占쎈선占쎌긾:"+o_num);
		int basket = basketService.insert(new BasketVo(0,0,0,"qwer"));

		System.out.println("o_num�꽆�뼱�샂:"+o_num);


		int bs_num = basketService.getbs_num();
		
		System.out.println("bs_num占쎄퐜占쎈선占쎌긾:"+bs_num);
		System.out.println(order);
		System.out.println(basket);
		if(order>0 && basket>0) {
			System.out.println("揶쏅�⑸굶 占쎌뵥占쎄퐣占쎈뱜占쎌삋占쎈쭡");
		}
		System.out.println(color.length);
		
	
		for(int i=0; i<color.length; i++) {
			System.out.println("price獄쏄퀣肉�"+color[i] );	
			System.out.println("price獄쏄퀣肉�"+size[i]);
			System.out.println("price獄쏄퀣肉�"+count[i]);
			System.out.println("price獄쏄퀣肉�"+price[i]);
			
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
		 
		 System.out.println("���젆gn"+g_nums);
		 System.out.println("���젆zn"+c_subnums);
		 System.out.println("���젆sn"+sz_ssubnums);
	
		 
		 	List<BasketlistVo> list = basketlistService.SelectAll(gcs_num1);
		System.out.println(list+"list값");
	
			
			 int basketL = basketlistService.insert(new BasketlistVo(0,bk_totalprice ,bk_ea, bs_num, o_num, gcs_num1)); 
			 System.out.println("성공");
	
		}
		return "redirect:/shop/add_to_cart_list";
	}
	
	@RequestMapping(value="/shop/add_to_cart_list")

	public String addToCartList(Model model) {
		//GoodsVo vo = goodsService.goodsfind(g_num);
	//	System.out.println("goods占쎄맒占쎈�뱄옙�젟癰귨옙:"+vo);
		int bs_num = basketService.getbs_num();
		System.out.println("bs_num"+bs_num);
		List<AddToCartVo> cartlistall = addtocartService.SelectAddToCartAll();
		List<AddToCartVo> cartlist = addtocartService.SelectAddToCart(bs_num);
		System.out.println("cartlist:"+cartlistall);
		
	//	int basketlist = basketlistService.insert(new BasketlistVo(0, order, basket, bs_num, o_num, bs_num))
	//	System.out.println("占쎄텢占쎌뵠筌앸뜄�봺占쎈뮞占쎈뱜揶쏉옙:"+list);
		
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
