package com.jhta.finalproject.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.GoodsVo;
import com.jhta.mybatis.mapper.GoodsMapper;

@Service
public class GoodsService {
 
	private GoodsMapper mapper; 
	
	public List<GoodsVo> list(){
		
		return mapper.list();
	}
}
