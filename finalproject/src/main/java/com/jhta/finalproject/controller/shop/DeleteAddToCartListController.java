package com.jhta.finalproject.controller.shop;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.BasketService;
import com.jhta.finalproject.service.BasketlistService;
import com.jhta.finalproject.vo.BasketVo;
import com.jhta.finalproject.vo.BasketlistVo;

@RestController
public class DeleteAddToCartListController {
	@Autowired BasketService basketService;
	@Autowired BasketlistService basketlistService;
	@RequestMapping(value = "/shop/DelCartList",produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> map(int bk_num,int bs_num){
		HashMap<String, Object> map = new HashMap<String, Object>();
		HashMap<String, Object> m = new HashMap<String, Object>();
		HashMap<String, Object> m2 = new HashMap<String, Object>();
		HashMap<String, Object> m3 = new HashMap<String, Object>();
		m.put("bk_num", bk_num);
		m2.put("bs_num", bs_num);
		System.out.println(bk_num+"bk_num");
		System.out.println(bs_num+"bs_num");
		
		BasketVo itea = basketService.SelectBsea2(m2);
		BasketVo itprice = basketService.SelectBsprice2(m2);
		int bs_ea1 = itea.getBs_ea();
		int bs_price1 = itprice.getBs_price();
		BasketlistVo it = basketlistService.SelectBkEa2(m);	
		System.out.println(it.getBk_ea()+"��ٱ��ϸ���Ʈ�ش����");
		System.out.println(bs_ea1+"��ٱ������̺� �ش����");
		System.out.println(bs_price1+"��ٱ������̺� �ش��Ѱ���");
	//	int its =	basketService.deleteAll(m2);
		
		int bk_ea1 =it.getBk_ea();
		System.out.println(bk_ea1+"��ٱ������̺� �ش����");
		
		 int calea =  bs_ea1-bk_ea1;
		 int calprice = calea*bs_price1;
		 System.out.println("����Ʈ&��ٱ��� ��갪"+calea);
		 	System.out.println(m2+"m2��");
		if(calea<=0) {
			
		 int d =	basketService.deleteAll(m2);
		 System.out.println(d+"d��");
		 if(d<0) 
			System.out.println("��������");
	
		System.out.println("����Ʈ���������� ��ٱ��ϻ�������");
		}else{
			m3.put("bs_ea", calea);
			m3.put("bs_price",calprice);
			m3.put("bs_num",bs_num);
		int up =	basketService.updateBs(m3);
		if(up<0) {
			System.out.println("������Ʈ����");
		}
		}
		int n=	basketlistService.Delete_CartList(m);
		
		if(n>0) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}

		return map;
	
	}
	@RequestMapping(value = "/shop/DelCartListAll",produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> map(){
		HashMap<String, Object> map = new HashMap<String, Object>();
	
		int n=	basketlistService.Delete_CartListAll();
		if(n>0) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}
		return map;
		
	}
	
}
