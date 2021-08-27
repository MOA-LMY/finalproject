package com.jhta.finalproject.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.PayVo;
import com.jhta.finalproject.vo.PaypagelistVo;
import com.jhta.mybatis.mapper.PayMapper;

@Service
public class PayService {

@Autowired private PayMapper mapper; 
	
	public int insert(PayVo vo) {
		
		return  mapper.insert(vo);
	}
	
	public int paygetcount(String m_id) {
		return mapper.paygetcount(m_id);
	}
	
	public List<PaypagelistVo> paypagelist(HashMap<String, Object> map){
		
		return mapper.paypagelist(map);
	}
}
