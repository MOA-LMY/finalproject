package com.jhta.finalproject.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.ReservationVo;
import com.jhta.mybatis.mapper.ReservationMapper;

@Service
public class ReservationService {
	@Autowired ReservationMapper mapper;
	public int insert(ReservationVo vo) {
		return mapper.insert(vo);
	}
	public List<ReservationVo> list(HashMap<String, Object> map){
		return mapper.list(map);
	}
	public int countAll(HashMap<String, Object> map) {
		return mapper.countAll(map);
	}
	public int delete(int r_num) {
		return mapper.delete(r_num);
	}
	public int counting(String m_id) {
		return mapper.counting(m_id);
	}
	public List<ReservationVo> list1(HashMap<String, Object> map){
		return mapper.list1(map);
	}
	public int countAll2(HashMap<String, Object> map) {
		System.out.println(mapper.countAll2(map));
		return mapper.countAll2(map);
	}
	public void reservationUpdate(int r_num) {
		mapper.reservationUpdate(r_num);
		
	}
	public void reservationMinus(int r_num) {
		mapper.reservationMinus(r_num);
		
	}
}
