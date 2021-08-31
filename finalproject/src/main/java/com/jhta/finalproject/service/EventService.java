package com.jhta.finalproject.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.CouponBoxVo;
import com.jhta.finalproject.vo.EcVo;
import com.jhta.finalproject.vo.EventVo;
import com.jhta.mybatis.mapper.EventMapper;

@Service
public class EventService {
	@Autowired private EventMapper mapper;
	
	public void setMapper(EventMapper mapper) {
		this.mapper = mapper;
	}
	
	public int insert(EventVo vo) {
		return mapper.insert(vo);
	}
	
	public List<EventVo> list(){
		return mapper.list();
	}
	
	public EventVo getinfo(String e_code) {
		return mapper.getinfo(e_code);
	}
	
	public int delete(String e_code) {
		return mapper.delete(e_code);
	}
	
	public int update(EventVo vo) {
		return mapper.update(vo);
	}
	public List<EventVo> event_search(HashMap<String, Object>map) {
		return mapper.event_search(map);
	}
	public int couponboxinsert(String c_code) {
		
		return mapper.couponboxinsert(c_code);
	}
	public EcVo ecinfo(HashMap<String, Object> map){
		return mapper.ecinfo(map);
	}
	public int couponboxupdate(String c_code){
		return mapper.couponboxupdate(c_code);
	}
}
