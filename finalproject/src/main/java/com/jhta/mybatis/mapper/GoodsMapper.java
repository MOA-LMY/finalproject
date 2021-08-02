package com.jhta.mybatis.mapper;



import java.util.List;

import com.jhta.finalproject.vo.GoodsVo;

public interface GoodsMapper {
	
	int insert(GoodsVo vo);

	List<GoodsVo> list();
	int delete(int g_num);
	GoodsVo find(int g_num);
	int update(GoodsVo vo);

	List<GoodsVo> mainlist();
	
}
