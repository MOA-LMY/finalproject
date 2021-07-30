package com.jhta.finalproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.OrderListVo;

@Service
public class OrderlistService {

	 @Autowired OrderlistService service;
	 
	 public int insert( OrderListVo vo) {
		 return service.insert(vo);
	 }
}
