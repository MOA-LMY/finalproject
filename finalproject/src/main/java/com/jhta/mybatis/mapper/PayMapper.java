package com.jhta.mybatis.mapper;

import com.jhta.finalproject.vo.PayVo;

public interface PayMapper {
int insert(PayVo vo);
int paygetcount(String m_id);
}
