package com.jhta.finalproject.mapper;

import com.jhta.finalproject.vo.MembersVo;

public interface MembersMapper {
	int insert(MembersVo vo);
	int delete(String id);
	int update(MembersVo vo);
}
