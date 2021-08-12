package com.jhta.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.ColorVo;
import com.jhta.mybatis.mapper.ColorMapper;


@Service
public class ColorService {
	@Autowired ColorMapper mapper;
	
	public ColorVo SelectOne(int g_num) {
		return mapper.SelectOne(g_num);
		}
	
	public List<ColorVo> colorlist(int g_num){
		return mapper.colorlist(g_num);
	}
	}
