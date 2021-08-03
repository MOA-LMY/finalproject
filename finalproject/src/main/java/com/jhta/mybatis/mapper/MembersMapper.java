package com.jhta.mybatis.mapper;

import java.util.List;

import com.jhta.finalproject.vo.MembersVo;

public interface MembersMapper {
	int insert(MembersVo vo);
	int delete(String m_id);
	int update(MembersVo vo);
	List<MembersVo> list();
	MembersVo find(String m_id);
}
