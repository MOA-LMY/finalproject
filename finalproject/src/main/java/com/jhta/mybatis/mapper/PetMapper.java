package com.jhta.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import com.jhta.finalproject.vo.PetVo;

public interface PetMapper {
	int insert(PetVo vo);
	List<PetVo> list(HashMap<String, Object> map);
	int delete(int pet_num);
	PetVo find(int pet_num);
	int update(PetVo vo);
	List<PetVo> mainPet();
	int countAll();
}
