package com.jhta.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import com.jhta.finalproject.vo.Gcs2Vo;
import com.jhta.finalproject.vo.GcsVo;
import com.jhta.finalproject.vo.GetcolorgcsVo;
import com.jhta.finalproject.vo.GoodgcsVo;

public interface GcsMapper {
	
	List<GcsVo> SelectAll(int g_num);
	List<Gcs2Vo> gcslist(int gc_num);
	GoodgcsVo goodgcsinfo(HashMap<String, Object> map);
	
	List<GetcolorgcsVo> colorlist(HashMap<String, Object> map);
}
