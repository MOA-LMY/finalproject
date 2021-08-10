package com.jhta.mybatis.mapper;

import java.util.List;

import com.jhta.finalproject.vo.PartnersVo;

public interface PartnersMapper {
	int insert(PartnersVo vo);
	List<PartnersVo> list();
	PartnersVo getinfo(String pt_id);
	int delete(String pt_id);
	int update(PartnersVo vo);
}
