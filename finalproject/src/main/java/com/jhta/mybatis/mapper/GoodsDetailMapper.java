package com.jhta.mybatis.mapper;

import java.util.List;

import com.jhta.finalproject.vo.GoodsDetailVo;

public interface GoodsDetailMapper {
	int insert(GoodsDetailVo vo);
	List<GoodsDetailVo> selectOne(int g_num);
}
