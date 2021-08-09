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

	public int insertgoods(GoodsVo vo) {
		return mapper.insertgoods(vo);
	}
	
	

	public List<GoodsVo> goodslist() {
		return mapper.goodslist();
	}
	public List<GoodsVo> gcgoodlist(int gc_num) {
		return mapper.gcgoodlist(gc_num);
	}
	
	

	public int goodsdelete(int g_num) {
		return mapper.goodsdelete(g_num);
	}

	

	public int goodsupdate(GoodsVo vo) {
		return mapper.goodsupdate(vo);
	}
	
	

	public GoodsVo goodsfind(int g_num) {
		return mapper.goodsfind(g_num);
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
	
	public List<GoodsVo> goodlist(int gc_num){
		return mapper.goodlist(gc_num);
	}
	
}
