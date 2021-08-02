package com.jhta.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.GoodsVo;
import com.jhta.mybatis.mapper.GoodsMapper;

@Service
public class GoodsService {

	@Autowired
	private GoodsMapper mapper;

	public void setMapper(GoodsMapper mapper) {
		this.mapper = mapper;
	}

	public int insert(GoodsVo vo) {
		return mapper.insert(vo);
	}

	public List<GoodsVo> list() {
		return mapper.list();
	}

	public int delete(int g_num) {
		return mapper.delete(g_num);
	}


	public int update(GoodsVo vo) {
		return mapper.update(vo);
	}

	public GoodsVo find(int g_num) {
		return mapper.find(g_num);
	}


	public GoodsVo healthygood() {
		return mapper.healthygood();
	}
	public GoodsVo fashiongood() {
		return mapper.fashiongood();
	}
	public GoodsVo foodgood() {
		return mapper.foodgood();
	}
	public GoodsVo livegood() {
		return mapper.livegood();
	}
	
	public List<GoodsVo> healthygoodlist(int gc_num){
		return mapper.healthygoodlist(gc_num);
	}
	
}
