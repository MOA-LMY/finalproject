package com.jhta.mybatis.mapper;

import java.util.List;

import com.jhta.finalproject.vo.EventVo;

public interface EventMapper {
	int insert(EventVo vo);
	List<EventVo> list();
	EventVo getinfo(String e_code);
	int delete(String e_code);
	int update(EventVo vo);
	
	
}
