package com.jhta.finalproject.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.Gcs2Vo;
import com.jhta.finalproject.vo.Gcs3Vo;
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

	
	public int gcsgoodsnum(Gcs3Vo gcs3vo) {
		return mapper.gcsgoodsnum(gcs3vo);
	}
	
	public int gcsinsert(Gcs3Vo insertvo) {
		return mapper.gcsinsert(insertvo);
	}
	


	public List<Gcs_AddVo> Select_Gcs_SizeList(HashMap<String, Object> m){
		return mapper.Select_Gcs_SizeList(m);
	}
	
	public int Select_Gcsnum(HashMap<String, Object> gcs_n){
		return mapper.Select_Gcsnum(gcs_n);

	}
	public int Select_Csubnum(HashMap<String, Object> color_c){
		return mapper.Select_Csubnum(color_c);

	}
	public int Select_Ssubnum(HashMap<String, Object> size_s){
		return mapper.Select_Ssubnum(size_s);

	}
	public int Select_Gnum(HashMap<String, Object> g){
		return mapper.Select_Gnum(g);

	}
	
	
	public GoodgcsVo goodgcsinfo(HashMap<String, Object> map) {
		return mapper.goodgcsinfo(map);
	}
	
	public List<GetcolorgcsVo> colorList(HashMap<String, Object> map){
		return mapper.colorlist(map);

	}
	public Gcs3Vo findgcsvo(HashMap<String, Object> map) {
		return mapper.findgcsvo(map);
	}

}

	