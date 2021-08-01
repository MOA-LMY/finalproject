package com.jhta.finalproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.BasketlistVo;
import com.jhta.mybatis.mapper.BasketlistMapper;

@Service
public class BasketlistService {

	@Autowired private BasketlistMapper mapper;
	
	public int insert(BasketlistVo vo) {
		
		return mapper.insert(vo);
	
	}
	
}
