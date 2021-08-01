package com.jhta.finalproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.OrderListVo;
import com.jhta.mybatis.mapper.OrderlistMapper;

@Service
public class OrderlistService {

	 @Autowired OrderlistMapper mapper;
	 
	 public int insert( OrderListVo vo) {
		 return mapper.insert(vo);
	 }
}
