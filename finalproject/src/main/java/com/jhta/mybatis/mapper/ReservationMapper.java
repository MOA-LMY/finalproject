package com.jhta.mybatis.mapper;


import java.util.List;

import com.jhta.finalproject.vo.PetVo;
import com.jhta.finalproject.vo.ReservationVo;

import java.util.HashMap;
import java.util.List;

import com.jhta.finalproject.vo.ReservationVo;

public interface ReservationMapper {
	int insert(ReservationVo vo);
	List<ReservationVo> list(HashMap<String, Object> map);
	int countAll(HashMap<String, Object> map);
	int delete(int r_num);
	int counting(String m_id);

	List<ReservationVo> list1(HashMap<String, Object> map);
	int countAll2(HashMap<String, Object> map);
	int update(int r_num);
	void reservationUpdate(int r_num);
	void reservationMinus(int r_num);

	List<ReservationVo> list();


}
