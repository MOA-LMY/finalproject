package com.jhta.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.SizesVo;
import com.jhta.mybatis.mapper.SizesMapper;

@Service
public class SizesService {

	@Autowired SizesMapper mapper;
	
	public List<SizesVo> sizeslist(int g_num){
		return mapper.sizeslist(g_num);
	}
}
