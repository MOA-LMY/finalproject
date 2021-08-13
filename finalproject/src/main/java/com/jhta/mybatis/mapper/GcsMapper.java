package com.jhta.mybatis.mapper;

import java.util.List;

import com.jhta.finalproject.vo.Gcs2Vo;
import com.jhta.finalproject.vo.Gcs3Vo;
import com.jhta.finalproject.vo.GcsVo;

public interface GcsMapper {
	List<GcsVo> SelectAll(int g_num);
	List<Gcs2Vo> gcslist(int gc_num);
	
	int gcsgoodsnum(Gcs3Vo gcs3vo);
	int gcsinsert(Gcs3Vo insertvo);
	
}
