package com.jhta.mybatis.mapper;

import java.util.HashMap;

import com.jhta.finalproject.vo.BasketVo;
import com.jhta.finalproject.vo.UpdateBsEaVo;

public interface BasketMapper {

	int insert(BasketVo vo);
	int getbs_num();
	 int updateBs(HashMap<String, Object> updatebs);
	 int deleteAll(HashMap<String, Object> delall);
	 BasketVo SelectBsea2(HashMap<String, Object> Bsea2);
	 BasketVo SelectBsprice2(HashMap<String, Object> Bsprice2);
}
