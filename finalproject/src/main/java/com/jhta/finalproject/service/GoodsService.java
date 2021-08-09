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
	
	public int insertcolor(GoodsVo vo) {
		return mapper.insertcolor(vo);
	}
	
	public int insertsizes(GoodsVo vo) {
		return mapper.insertsizes(vo);
	}

	public List<GoodsVo> goodslist() {
		return mapper.goodslist();
	}
	
	public List<GoodsVo> colorlist() {
		return mapper.colorlist();
	}
	
	public List<GoodsVo> sizeslist() {
		return mapper.sizeslist();
	}

	public int goodsdelete(int g_num) {
		return mapper.goodsdelete(g_num);
	}

	public int colordelete(int c_subnum) {
		return mapper.colordelete(c_subnum);
	}
	
	public int sizesdelete(int sz_ssubnum) {
		return mapper.sizesdelete(sz_ssubnum);
	}

	public int goodsupdate(GoodsVo vo) {
		return mapper.goodsupdate(vo);
	}
	
	public int colorupdate(GoodsVo vo) {
		return mapper.colorupdate(vo);
	}
	
	public int sizesupdate(GoodsVo vo) {
		return mapper.sizesupdate(vo);
	}

	public GoodsVo goodsfind(int g_num) {
		return mapper.goodsfind(g_num);
	}
	
	public GoodsVo colorfind(int c_subnum) {
		return mapper.colorfind(c_subnum);
	}
	
	public GoodsVo sizesfind(int sz_ssubnum) {
		return mapper.sizesfind(sz_ssubnum);
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
