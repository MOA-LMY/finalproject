package com.jhta.finalproject.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.BasketVo;
import com.jhta.finalproject.vo.BasketlistVo;
import com.jhta.finalproject.vo.UpdateBkEaVo;
import com.jhta.finalproject.vo.UpdateBsEaVo;
import com.jhta.mybatis.mapper.BasketMapper;


@Service
public class BasketService {

	@Autowired private BasketMapper mapper;
	
	public int insert(BasketVo vo) {
		
		return mapper.insert(vo);
	
	}
	public int getbs_num() {
		
		return mapper.getbs_num();
	}
	public int updateBs(HashMap<String, Object> updatebs) {
		return mapper.updateBs(updatebs);
	}
	public int deleteAll(HashMap<String, Object> delall) {
		return mapper.deleteAll(delall);
	}
	public BasketVo SelectBsea2(HashMap<String, Object> Bsea2) {
		return mapper.SelectBsea2(Bsea2);
	}
	public BasketVo SelectBsprice2(HashMap<String, Object> Bsprice2) {
		return mapper.SelectBsprice2(Bsprice2);
	}
	
}
