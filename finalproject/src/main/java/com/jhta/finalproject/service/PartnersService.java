package com.jhta.finalproject.service;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.PartnersVo;
import com.jhta.mybatis.mapper.PartnersMapper;

@Service
public class PartnersService {
	@Autowired private PartnersMapper mapper;
	@Autowired PasswordEncoder passwordEncoder;
	public int insert(PartnersVo vo) {
		return mapper.insert(vo);
	}
	public int update(PartnersVo vo) {
		return mapper.update(vo);
	}
	public int delete(String id) {
		return mapper.delete(id);
	}
	public List<PartnersVo> selectAll(){
		return mapper.selectAll();
	}
	public PartnersVo select(String id){
		return mapper.select(id);
	}
	public PartnersVo isPartners(HashMap<String, String> map) {
		return mapper.isPartners(map);
	}
	public int idCheck(String id){
		return mapper.idCheck(id);
	}
	public int changePwd(HashMap<String, String> map) {
		String pwd = map.get("pwd");
		map.remove("pwd");
		map.put("pwd", passwordEncoder.encode(pwd));
		return mapper.changePwd(map);
	}
}


