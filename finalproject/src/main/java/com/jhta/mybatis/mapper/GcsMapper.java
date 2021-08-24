package com.jhta.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import com.jhta.finalproject.vo.Gcs2Vo;
import com.jhta.finalproject.vo.Gcs3Vo;
import com.jhta.finalproject.vo.GcsVo;

import com.jhta.finalproject.vo.Gcs_AddVo;

import com.jhta.finalproject.vo.GetcolorgcsVo;
import com.jhta.finalproject.vo.GoodgcsVo;


public interface GcsMapper {
	
	List<GcsVo> SelectAll(int g_num);
	List<Gcs2Vo> gcslist(int gc_num);

	
	int gcsgoodsnum(Gcs3Vo gcs3vo);
	int gcsinsert(Gcs3Vo insertvo);
	


	List<Gcs_AddVo> Select_Gcs_SizeList(HashMap<String, Object> m);
	
	int Select_Gcsnum(HashMap<String, Object> gcs_n);
	
	int Select_Csubnum(HashMap<String, Object> color_c);
	int Select_Ssubnum(HashMap<String, Object> size_s);
	int Select_Gnum(HashMap<String, Object> g);
	List<Gcs3Vo> Select_GcsList(HashMap<String, Object> gcslist);
	
	GoodgcsVo goodgcsinfo(HashMap<String, Object> map);
	
	List<GetcolorgcsVo> colorlist(HashMap<String, Object> map);

	Gcs3Vo findgcsvo (HashMap<String, Object> map);
}
