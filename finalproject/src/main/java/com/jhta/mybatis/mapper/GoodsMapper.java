package com.jhta.mybatis.mapper;



import java.util.List;

import com.jhta.finalproject.vo.GoodsVo;

public interface GoodsMapper {
	
	int insertgoods(GoodsVo vo);
	int insertcolor(GoodsVo vo);
	int insertsizes(GoodsVo vo);

	List<GoodsVo> goodslist();
	List<GoodsVo> colorlist();
	List<GoodsVo> sizeslist();
	
	int goodsdelete(int g_num);
	int colordelete(int c_subnum);
	int sizesdelete(int sz_ssubnum);
	
	GoodsVo goodsfind(int g_num);
	GoodsVo colorfind(int c_subnum);
	GoodsVo sizesfind(int sz_ssubnum);

	int goodsupdate(GoodsVo vo);
	int colorupdate(GoodsVo vo);
	int sizesupdate(GoodsVo vo);

	GoodsVo healthygood();
	GoodsVo fashiongood();
	GoodsVo foodgood();
	GoodsVo livegood();
	
	List<GoodsVo> healthygoodlist(int gc_num);
}
