package com.jhta.mybatis.mapper;

import java.util.List;

import com.jhta.finalproject.vo.AddToCartVo;

public interface AddToCartMapper {
	List<AddToCartVo> SelectAddToCartAll();
	List<AddToCartVo> SelectAddToCart(int bs_num);
	}


