package com.jhta.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.GoodsDetailVo;
import com.jhta.mybatis.mapper.GoodsDetailMapper;

@Service
public class GoodsDetailService {
	@Autowired
	private GoodsDetailMapper mapper;
	
	public void setMapper(GoodsDetailMapper mapper) {
		this.mapper = mapper;
	}
	
	public int insert(GoodsDetailVo vo) {
		return mapper.insert(vo);
	}
	public GoodsDetailVo selectOne(int g_num){
		return mapper.selectOne(g_num);
	}
}
