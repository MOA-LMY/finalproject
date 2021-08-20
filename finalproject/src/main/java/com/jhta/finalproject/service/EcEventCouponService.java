package com.jhta.finalproject.service;

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
}
