package com.jhta.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.GoodsCategoryVo;
import com.jhta.mybatis.mapper.GoodscategoryMapper;

@Service
public class GoodscategoryService {

	@Autowired GoodscategoryMapper mapper;
	
	public List<GoodsCategoryVo> list(){
		return mapper.list();
	}
}
