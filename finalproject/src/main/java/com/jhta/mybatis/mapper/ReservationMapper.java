package com.jhta.mybatis.mapper;

import java.util.List;

import com.jhta.finalproject.vo.PetVo;
import com.jhta.finalproject.vo.ReservationVo;

public interface ReservationMapper {
	List<ReservationVo> list();
	int update(int r_num);
}
