package com.jhta.finalproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.BasketVo;
import com.jhta.finalproject.vo.DelInfoVo;
import com.jhta.mybatis.mapper.BasketMapper;
import com.jhta.mybatis.mapper.DelinfoMapper;

@Service
public class BasketService {

	@Autowired private BasketMapper mapper;
	
	public int insert(BasketVo vo) {
		
		return mapper.insert(vo);
	
	}
	
}
