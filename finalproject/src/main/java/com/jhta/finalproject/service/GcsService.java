package com.jhta.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.GcsVo;
import com.jhta.mybatis.mapper.GcsMapper;

@Service
public class GcsService {
	@Autowired GcsMapper mapper;
	public List<GcsVo> SelectAll(int g_num){
		
			return mapper.SelectAll(g_num);
	}
}