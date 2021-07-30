package com.jhta.finalproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.DelInfoVo;
import com.jhta.mybatis.mapper.DelinfoMapper;

@Service
public class DelinfoService {
 
	@Autowired private DelinfoMapper mapper;
	
	public int insert(DelInfoVo vo) {
		
		return mapper.insert(vo);
	
	}
	
}
