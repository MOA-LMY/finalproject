package com.jhta.mybatis.mapper;

import com.jhta.finalproject.vo.DelInfoVo;

public interface DelinfoMapper {

	int insert(DelInfoVo vo);
	int d_numfind(String m_id);
}
