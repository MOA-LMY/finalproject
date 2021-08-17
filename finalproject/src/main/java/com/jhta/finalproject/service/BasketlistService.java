package com.jhta.finalproject.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.BasketlistVo;
import com.jhta.finalproject.vo.UpdateBkEaVo;
import com.jhta.mybatis.mapper.BasketlistMapper;

@Service
public class BasketlistService {

	@Autowired private BasketlistMapper mapper;
	
	public int insert(BasketlistVo vo) {
		
		return mapper.insert(vo);
	
	}
	public int update_BkEa(UpdateBkEaVo vo) {
		return mapper.update_BkEa(vo);
	}
	public int update_Total(HashMap<String, Object> uptot) {
		return mapper.update_Total(uptot);
	}
	public int Delete_CartList(HashMap<String, Object> bk_num) {
		return mapper.Delete_CartList(bk_num);
	}
	public int Delete_CartListAll() {
		return mapper.Delete_CartListAll();
	}
	public BasketlistVo SelectAll(int gcs_num) {
		return mapper.SelectAll(gcs_num);
	}
	public int SelectBkEa(HashMap<String, Object> Bkea) {
		return mapper.SelectBkEa(Bkea);
	}
	public int SelectBkPrice(HashMap<String, Object> Bkprice) {
		return mapper.SelectBkPrice(Bkprice);
	}
	
}
