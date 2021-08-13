package com.jhta.finalproject.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.Gcs2Vo;
import com.jhta.finalproject.vo.GcsVo;

import com.jhta.finalproject.vo.Gcs_AddVo;

import com.jhta.finalproject.vo.GetcolorgcsVo;
import com.jhta.finalproject.vo.GoodgcsVo;

import com.jhta.mybatis.mapper.GcsMapper;

@Service
public class GcsService {
	@Autowired GcsMapper mapper;
	
	public List<GcsVo> SelectAll(int g_num){
		
			return mapper.SelectAll(g_num);
	}
	
	public List<Gcs2Vo> gcslist (int gc_num){
		return mapper.gcslist(gc_num);
	}

	public List<Gcs_AddVo> Select_Gcs_SizeList(HashMap<String, Object> m){
		return mapper.Select_Gcs_SizeList(m);
	}
	
	public int Select_Gcsnum(HashMap<String, Object> gcs_n){
		return mapper.Select_Gcsnum(gcs_n);

	}
	public GoodgcsVo goodgcsinfo(HashMap<String, Object> map) {
		return mapper.goodgcsinfo(map);
	}
	
	public List<GetcolorgcsVo> colorList(HashMap<String, Object> map){
		return mapper.colorlist(map);

	}
}
