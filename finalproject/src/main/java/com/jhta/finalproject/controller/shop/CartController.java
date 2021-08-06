package com.jhta.finalproject.controller.shop;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.DelinfoService;
import com.jhta.finalproject.service.OrdersService;
import com.jhta.finalproject.vo.OrdersVo;

@RestController
public class CartController {
	
	@Autowired OrdersService orderservice;
	@Autowired DelinfoService delinfoservice; 
	@RequestMapping(value="/shop/cart" ,produces= {MediaType.APPLICATION_JSON_VALUE})
	public  HashMap<String, Object> cart (@RequestParam(value="p_numarray[]") List<String> p_numarray){
	
		int d_num = delinfoservice.d_numfind("test");
		System.out.println("d_num : " + d_num);
		//  ���̵� ���Ƿ� �ذ� ���� ���̵� �޾Ƽ� ���� ������ 
		
		int n = orderservice.insert(new OrdersVo(0, "�̿Ϸ�","test", d_num));
		if(n>0) {
			System.out.println("�ֹ����̺� ���� ���� ");
		}
		for(int i=0; i<p_numarray.size(); i++) {
			
		System.out.println("��Ʋ�η��� �Ѿ�� ��ǰ ��ȣ"+p_numarray.get(i));
		

		}
		
		HashMap<String, Object> map= new HashMap<String, Object>();
		
		map.put("result","success");
		return map;
	}
	
}
