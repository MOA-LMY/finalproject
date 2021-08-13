package com.jhta.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import com.jhta.finalproject.vo.Gcs2Vo;
import com.jhta.finalproject.vo.GcsVo;
import com.jhta.finalproject.vo.Gcs_AddVo;

public interface GcsMapper {
	List<GcsVo> SelectAll(int g_num);
	List<Gcs2Vo> gcslist(int gc_num);
	List<Gcs_AddVo> Select_Gcs_SizeList(HashMap<String, Object> m);
	int Select_Gcsnum(HashMap<String, Object> gcs_n);
}
