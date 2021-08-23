package com.jhta.finalproject.service;

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
}
