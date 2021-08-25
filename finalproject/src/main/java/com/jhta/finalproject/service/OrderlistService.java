package com.jhta.finalproject.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.BasketlistorderVo;
import com.jhta.finalproject.vo.GoodOrderlistGcsVo;
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
	 
	 public List<GoodOrderlistGcsVo> neworderlist(int o_num){
		 return mapper.neworderlist(o_num);
	 }
	 
	 public int orderlistgscnumupdate(HashMap<String, Object>map) {
		 return mapper.orderlistgscnumupdate(map);
	 }

	 
	 
}
