package com.jhta.finalproject.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.jhta.finalproject.mapper.GoodsMapper;
import com.jhta.finalproject.vo.GoodsVo;

@Service
public class GoodsService {
 
	private GoodsMapper mapper; 
	
	public List<GoodsVo> list(){
		
		return mapper.list();
	}
}
