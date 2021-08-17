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
			
		System.out.println("而щ윭諛곗뿴:"+c);
		}
		for(String s : size ) {
			System.out.println("�궗�씠利덈같�뿴:"+s);
		}
		for(String cs : count) {
			System.out.println("�닔�웾諛곗뿴:"+cs);
		}
		for(String p : price) {
			System.out.println("媛�寃⑸같�뿴:"+p);
		}
		for(String cn : c_subnum) {
			System.out.println("�궗�씠利덉꽌釉뚮쾲�샇諛곗뿴:"+cn);
		}
		for(String szn : sz_ssubnum) {
			System.out.println("而щ윭�꽌釉뚮쾲�샇諛곗뿴:"+szn);
		}
		
		
		
	//	ArrayList<String> list = new ArrayList<String>();
		
		
		System.out.println("img�꽆�뼱�샂"+g_saveimg);
		int d_num = delinfoservice.d_numfind2("key1004");
		System.out.println("d_num�꽆�뼱�샂:"+d_num);
		
		int order = ordersService.insert(new OrdersVo(0, "미처리","key1004", d_num));
		int o_num = ordersService.geto_num();
		System.out.println("o_num�꽆�뼱�샂:"+o_num);
		int basket = basketService.insert(new BasketVo(0,0,0,"key1004"));
		int bs_num = basketService.getbs_num();
		
		System.out.println("bs_num�꽆�뼱�샂:"+bs_num);
		System.out.println(order);
		System.out.println(basket);
		if(order>0 && basket>0) {
			System.out.println("媛믩뱾 �씤�꽌�듃�옒�맖");
		}
		System.out.println(color.length);
		
	
		for(int i=0; i<color.length; i++) {
			System.out.println("price諛곗뿴"+color[i] );	
			System.out.println("price諛곗뿴"+size[i]);
			System.out.println("price諛곗뿴"+count[i]);
			System.out.println("price諛곗뿴"+price[i]);
			
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
		 int c_subnums = gcsService.Select_Csubnum(map1);
		 int sz_ssubnums = gcsService.Select_Ssubnum(map2);
		 int g_nums= gcsService.Select_Gnum(map3);
		
		 System.out.println(g_num);
		 System.out.println(c_subnum1);
		 System.out.println(sz_ssubnum1);
		 
		 System.out.println("셀렉gn"+g_nums);
		 System.out.println("셀렉zn"+c_subnums);
		 System.out.println("셀렉sn"+sz_ssubnums);
	
		 
		 		BasketlistVo vo = basketlistService.SelectAll(gcs_num1);
		System.out.println(vo);
		if(vo==null) {
			 int basketL = basketlistService.insert(new BasketlistVo(0,bk_totalprice ,bk_ea, bs_num, o_num, gcs_num1)); 
	//	}else if(g_num==g_nums&c_subnum1==c_subnums&sz_ssubnum1==sz_ssubnums) {
			
		 }else{
			 System.out.println("업데이트");
			 HashMap<String, Object> bea = new HashMap<String, Object>();
			 bea.put("gcs_num",gcs_num1);
			 //해당 gcs_num g_num이랑 g_num 같으면 price 셀렉해서 tot-ea가져와서 곱해서 값 계산 .
			 
			 int Bkea = basketlistService.SelectBkEa(bea);
			 int Bkprice = basketlistService.SelectBkPrice(bea);
			 int tot_ea = Bkea+bk_ea;
			 int tot_price = Bkprice+bk_totalprice;
			 System.out.println("상품수량합"+tot_ea);
			 System.out.println("상품수량가격합"+tot_price);
			 basketlistService.update_BkEa(new UpdateBkEaVo(tot_ea,tot_price, gcs_num1));	
		//	 int basketL = basketlistService.insert(new BasketlistVo(0,bk_totalprice ,bk_ea, bs_num, o_num, gcs_num1)); 
		 }
			// update bk_ea set basketlist where g_num , gcs_num c_subnum, sz_ssubnum; 
		}
		return "redirect:/shop/add_to_cart_list";
	}
	@RequestMapping(value="/shop/add_to_cart_list")

	public String addToCartList(Model model) {
		//GoodsVo vo = goodsService.goodsfind(g_num);
	//	System.out.println("goods�긽�뭹�젙蹂�:"+vo);
		
		List<AddToCartVo> cartlist = addtocartService.SelectAddToCart();
		System.out.println("cartlist:"+cartlist);
		
	//	int basketlist = basketlistService.insert(new BasketlistVo(0, order, basket, bs_num, o_num, bs_num))
	//	System.out.println("�궗�씠利덈━�뒪�듃媛�:"+list);
		
	/*
		System.out.println(g_num);
		GoodsVo vo2 = goodsService.goodsfind(g_num);
		
		goodsService.goodsfind(g_num);
		*/
				
		
	//	model.addAttribute("list", list);
		
		model.addAttribute("cartlist", cartlist);
	//	model.addAttribute("vo",vo);
		
		return "/shop/add_to_cart_list";
	}
}
