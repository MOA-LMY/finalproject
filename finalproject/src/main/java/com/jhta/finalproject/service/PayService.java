package com.jhta.finalproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.PayVo;
import com.jhta.mybatis.mapper.PayMapper;

@Service
public class PayService {

@Autowired private PayMapper mapper; 
	
	public int insert(PayVo vo) {
		
		return  mapper.insert(vo);
	}
}
