package com.jhta.finalproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.OrdersVo;
import com.jhta.mybatis.mapper.OrdersMapper;

@Service
public class OrdersService {

	@Autowired private OrdersMapper mapper; 
	
	public int insert(OrdersVo vo) {
		
		return  mapper.insert(vo);
	}
}