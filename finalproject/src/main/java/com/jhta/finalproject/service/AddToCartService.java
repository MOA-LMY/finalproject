package com.jhta.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.AddToCartVo;
import com.jhta.mybatis.mapper.AddToCartMapper;

@Service
public class AddToCartService {
	 @Autowired private AddToCartMapper mapper;
	 public List<AddToCartVo> SelectAddToCartAll(){
		 return mapper.SelectAddToCartAll();
	 }
	 public List<AddToCartVo> SelectAddToCart(int bs_num){
		 return mapper.SelectAddToCart(bs_num);
	 }

}
