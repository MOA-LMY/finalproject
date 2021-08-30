package com.jhta.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import com.jhta.finalproject.vo.AddToCartVo;

public interface AddToCartMapper {
	List<AddToCartVo> SelectAddToCartAll(HashMap<String, Object> map);
	List<AddToCartVo> SelectAddToCart(int bs_num);
	}


