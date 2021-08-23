package com.jhta.finalproject.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.PetVo;
import com.jhta.mybatis.mapper.PetMapper;

@Service
public class PetService {
	
	@Autowired
	private PetMapper mapper;
	
	public void setMapper(PetMapper mapper) {
		this.mapper = mapper;
	}
	
	public int insert(PetVo vo) {
		return mapper.insert(vo);
	}
	
	public List<PetVo> list(HashMap<String, Object> map){
		return mapper.list(map);
	}
	
	public int delete(int pet_num) {
		return mapper.delete(pet_num);
	}
	
	public int update(PetVo vo) {
		return mapper.update(vo);
	}
	
	public PetVo find(int pet_num) {
		return mapper.find(pet_num);
	}
	public List<PetVo> mainPet(){
		return mapper.mainPet();
	}
	public int countAll() {
		return mapper.countAll();
	}
}
