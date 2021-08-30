package com.jhta.finalproject.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.AddToCartVo;
import com.jhta.mybatis.mapper.AddToCartMapper;

@Service
public class AddToCartService {
	 @Autowired private AddToCartMapper mapper;
	 public List<AddToCartVo> SelectAddToCartAll(HashMap<String, Object> map){
		 return mapper.SelectAddToCartAll(map);
	 }
	 public List<AddToCartVo> SelectAddToCart(int bs_num){
		 return mapper.SelectAddToCart(bs_num);
	 }

}
