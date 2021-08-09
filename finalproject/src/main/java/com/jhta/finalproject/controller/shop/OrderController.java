package com.jhta.finalproject.controller.shop;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.DelinfoService;
import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.service.OrderlistService;
import com.jhta.finalproject.service.OrdersService;
import com.jhta.finalproject.vo.GoodsVo;
import com.jhta.finalproject.vo.OrderListVo;
import com.jhta.finalproject.vo.OrdersVo;



@RestController
public class OrderController {

	@Autowired OrdersService orderservice;
	@Autowired DelinfoService delinfoservice;
	@Autowired OrderlistService orderlistservice;
	@Autowired GoodsService goodsservice;
	@RequestMapping(value="/shop/order",produces= {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> order(@RequestParam(value="p_numarray[]") List<String> p_numarray,@RequestParam(value="bk_eaarray[]") List<String> bk_eaarray ){
		
		HashMap<String, Object> map =new HashMap<String, Object>();
		
		int d_num = delinfoservice.d_numfind("qwer");
		System.out.println("d_num(��ǥ������� ��۹�ȣ) : " + d_num);
		//  ���̵� ���Ƿ� �ذ� ���� ���̵� �޾Ƽ� ���� ������ 

		int n= orderservice.insert(new OrdersVo(0, "�̿Ϸ�","qwer", d_num));
		int o_num = orderservice.geto_num();
		System.out.println("���� order���̺� �ֱ� num:" + o_num);
		
		for(int i=0; i<p_numarray.size(); i++) {
			
			int g_num = Integer.parseInt(p_numarray.get(i));
			int bk_ea = Integer.parseInt(bk_eaarray.get(i));
			System.out.println("��Ʋ�η��� �Ѿ�� ��ǰ ��ȣ"+g_num);
			System.out.println("��Ʋ�η��� �Ѿ�� ����"+bk_ea);
			GoodsVo vo= goodsservice.goodsfind(g_num);
			int x = orderlistservice.insert(new OrderListVo(0, (bk_ea*vo.getG_price()), bk_ea, o_num, g_num));
			
			if(x>0) {
				System.out.println("����");
			}
			}
		
		map.put("result","success");
		return map;
	}
}
