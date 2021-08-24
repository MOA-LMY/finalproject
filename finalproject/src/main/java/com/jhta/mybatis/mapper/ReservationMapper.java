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
	List<ReservationVo> list();
	int update(int r_num);
}
