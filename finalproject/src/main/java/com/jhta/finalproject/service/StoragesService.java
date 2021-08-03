package com.jhta.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.StoragesVo;
import com.jhta.mybatis.mapper.StoragesMapper;

@Service
public class StoragesService {
	@Autowired 
	private StoragesMapper mapper;
	
	public void setMapper(StoragesMapper mapper) {
		this.mapper = mapper;
	}
	
	public int insert(StoragesVo vo) {
		return mapper.insert(vo);
	}
	
	public List<StoragesVo> list(){
		return mapper.list();
	}
	
	public int delete(int st_num) {
		return mapper.delete(st_num);
	}
	
	public int update(StoragesVo vo) {
		return mapper.update(vo);
	}
	
	public StoragesVo find(int st_num) {
		return mapper.find(st_num);
	}
}
