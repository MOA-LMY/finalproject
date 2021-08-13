package com.jhta.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.OrderListVo;
import com.jhta.finalproject.vo.OrdersVo;
import com.jhta.mybatis.mapper.OrderlistMapper;

@Service
public class OrderlistService {

	 @Autowired OrderlistMapper mapper;
	 
	 public int insert( OrderListVo vo) {
		 return mapper.insert(vo);
	 }
	 
	 public OrdersVo neworder(String m_id){
		 return mapper.neworder(m_id);
	 }
	 
	 public List<OrderListVo> neworderlist(int o_num){
		 return mapper.neworderlist(o_num);
	 }
}
