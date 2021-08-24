package com.jhta.mybatis.mapper;

import java.util.List;

import com.jhta.finalproject.vo.EcEventCouponboxVo;

public interface EcMapper {
	
	List<EcEventCouponboxVo> eceventcouponlist(String m_id);
	
}
