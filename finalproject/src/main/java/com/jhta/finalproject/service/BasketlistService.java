package com.jhta.finalproject.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.BasketlistVo;
import com.jhta.finalproject.vo.BasketlistorderVo;
import com.jhta.finalproject.vo.UpdateBkEaVo;
import com.jhta.mybatis.mapper.BasketlistMapper;

@Service
public class BasketlistService {

	@Autowired private BasketlistMapper mapper;

	public int insert(BasketlistVo vo) {
		
		return mapper.insert(vo);
	
	}	
	public int updateBk(HashMap<String, Object> updatebk) {
		return mapper.updateBk(updatebk);
	}

	public int Delete_CartList(HashMap<String, Object> bk_num) {
		return mapper.Delete_CartList(bk_num);
	}
	public int Delete_CartListAll() {
		return mapper.Delete_CartListAll();
	}
	public List<BasketlistVo> SelectAll(int gcs_num) {
		return mapper.SelectAll(gcs_num);
	}
	public int SelectBkEa(HashMap<String, Object> Bkea) {
		return mapper.SelectBkEa(Bkea);
	}
	public int SelectBkPrice(HashMap<String, Object> Bkprice) {
		return mapper.SelectBkPrice(Bkprice);
	}
	public BasketlistVo SelectBkEa2(HashMap<String, Object> Bkea2) {
		return mapper.SelectBkea2(Bkea2);
	}
	public BasketlistVo SelectBkprice2(HashMap<String, Object> Bkprice2) {
		return mapper.SelectBkprice2(Bkprice2);
	}
	public int bsketlistgscnumupdate(HashMap<String, Object>map) {
		return mapper.bsketlistgscnumupdate(map);
	}
	public List<BasketlistorderVo> basketlistorder(int bs_num){
		return mapper.basketlistorder(bs_num);
	}
	public int basketlitgeto_num(int bs_num) {
		return mapper.basketlitgeto_num(bs_num);
	}
}
