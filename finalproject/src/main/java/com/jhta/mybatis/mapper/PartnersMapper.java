package com.jhta.mybatis.mapper;


import java.util.HashMap;
import java.util.List;

import com.jhta.finalproject.vo.PartnersVo;
import com.jhta.finalproject.vo.PetVo;

public interface PartnersMapper {
 int insert(PartnersVo vo);
 int update(PartnersVo vo) ;
 int delete(String id) ;
 List<PartnersVo> selectAll();
 PartnersVo select(String id);
 PartnersVo isPartners(HashMap<String, String> map);
 int idCheck(String id);
 int changePwd(HashMap<String, String> map);
 //PartnersDetail partnersDetail(String id); ???
	int insert(PetVo vo);
	List<PetVo> list();
	int delete(int pet_num);
	PetVo find(int pet_num);
	int update(PetVo vo);
	List<PetVo> mainPet();
}
