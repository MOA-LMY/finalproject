package com.jhta.mybatis.mapper;



import java.util.List;

import com.jhta.finalproject.vo.GoodsVo;

public interface GoodsMapper {
	
	int insert(GoodsVo vo);
	List<GoodsVo> list(); 
	
	List<GoodsVo> mainlist();
	
}
