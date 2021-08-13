package com.jhta.mybatis.mapper;



import java.util.List;

import com.jhta.finalproject.vo.GcsListVo;
import com.jhta.finalproject.vo.GoodsVo;

public interface GoodsMapper {
	
	int insertgoods(GoodsVo vo);


	List<GoodsVo> gcgoodlist(int gc_num);
	
	List<GcsListVo> goodslist();
	
	
	int goodsdelete(int g_num);

	
	GoodsVo goodsfind(int g_num);


	int goodsupdate(GoodsVo vo);

	int insert(GoodsVo vo);
	
	
	
	List<GoodsVo> list();
	int delete(int g_num);
	GoodsVo find(int g_num);
	int update(GoodsVo vo);

	GoodsVo healthygood();
	GoodsVo fashiongood();
	GoodsVo foodgood();
	GoodsVo livegood();
	
	List<GoodsVo> goodlist(int gc_num);
}
