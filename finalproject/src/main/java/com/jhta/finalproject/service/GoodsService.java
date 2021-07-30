package com.jhta.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.GoodsVo;
import com.jhta.mybatis.mapper.GoodsMapper;

@Service
public class GoodsService {
 
	@Autowired private GoodsMapper mapper; 
	
	public List<GoodsVo> list(){
		
		return mapper.list();
	}
	public int insert(GoodsVo vo) {
		
		return mapper.insert(vo);
		
	}
}
