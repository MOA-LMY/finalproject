package com.jhta.finalproject.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.EcEventCouponboxVo;
import com.jhta.mybatis.mapper.EcMapper;

@Service
public class EcEventCouponService {
	@Autowired EcMapper mcmapper;
	
	public List<EcEventCouponboxVo> eceventcouponlist(String m_id){
		
		return mcmapper.eceventcouponlist(m_id);
	}
	public int countAll(String m_id) {
		return mcmapper.countAll(m_id);
	}
	public List<EcEventCouponboxVo> eceventcouponlist2(HashMap<String, Object> map){
		return mcmapper.eceventcouponlist2(map);
	}
	public int deleteEc(int ec_num) {
		return mcmapper.deleteEc(ec_num);
	}
	public int deleteCou(String c_code) {
		return mcmapper.deleteCou(c_code);
	}
	public String findCcode(int ec_num) {
		return mcmapper.findCcode(ec_num);
	}
	public int countNow(String m_id) {
		return mcmapper.countNow(m_id);
	}
}
