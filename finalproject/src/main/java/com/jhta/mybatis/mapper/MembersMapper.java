package com.jhta.mybatis.mapper;

import com.jhta.finalproject.vo.MembersVo;

public interface MembersMapper {
	int insert(MembersVo vo);
	int delete(String m_id);
	int update(MembersVo vo);
	int isMember(String m_id);
}
