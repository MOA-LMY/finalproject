package com.jhta.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import com.jhta.finalproject.vo.EcEventCouponboxVo;

public interface EcMapper {
	
	List<EcEventCouponboxVo> eceventcouponlist(String m_id);
	int countAll(String m_id);
	List<EcEventCouponboxVo> eceventcouponlist2(HashMap<String, Object> map);
	int deleteEc(int ec_num);
	int deleteCou(String c_code);
	String findCcode(int ec_num);
	int countNow(String m_id);
}
