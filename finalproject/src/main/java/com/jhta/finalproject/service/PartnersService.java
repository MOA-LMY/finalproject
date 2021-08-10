package com.jhta.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.PartnersVo;
import com.jhta.mybatis.mapper.PartnersMapper;

@Service
public class PartnersService {
	@Autowired private PartnersMapper mapper;
	
	public void setMapper(PartnersMapper mapper) {
		this.mapper = mapper;
	}
	
	public int insert(PartnersVo vo) {
		return mapper.insert(vo);
	}
	
	public List<PartnersVo> list(){
		return mapper.list();
	}
	
	public PartnersVo getinfo(String pt_id) {
		return mapper.getinfo(pt_id);
	}
	
	public int delete(String pt_id) {
		return mapper.delete(pt_id);
	}
	
	public int update(PartnersVo vo) {
		return mapper.update(vo);
	}
}
