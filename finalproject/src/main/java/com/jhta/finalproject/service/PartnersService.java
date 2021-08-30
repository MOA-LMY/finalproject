package com.jhta.finalproject.service;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.AuthVo;
import com.jhta.finalproject.vo.PartnersVo;
import com.jhta.finalproject.vo.PetVo;
import com.jhta.finalproject.vo.ReservationVo;
import com.jhta.mybatis.mapper.MembersMapper;
import com.jhta.mybatis.mapper.PartnersMapper;
import com.jhta.mybatis.mapper.PetMapper;
import com.jhta.mybatis.mapper.ReservationMapper;

@Service
public class PartnersService {
	@Autowired private PartnersMapper partnersMapper;
	@Autowired private PetMapper petMapper;
	@Autowired private ReservationMapper reservationMapper;
	@Autowired PasswordEncoder passwordEncoder;
	@Autowired MembersMapper mapper;
	public int insert(PartnersVo vo) {
		String pwd = vo.getPt_pwd();
		vo.setPt_pwd(passwordEncoder.encode(pwd));
		AuthVo avo = new AuthVo();
		avo.setId(vo.getPt_id());
		avo.setAuthority("ROLE_PARTNER");
			mapper.insertAuth(avo);
		return partnersMapper.insert(vo);
	}
	public int update(PartnersVo vo) {
		return partnersMapper.update(vo);
	}
	public int delete(String id) {
		return partnersMapper.delete(id);
	}
	public List<PartnersVo> selectAll(){
		return partnersMapper.selectAll();
	}
	
	public PartnersVo select(String id){
		return partnersMapper.select(id);
	}
	public PartnersVo isPartners(HashMap<String, String> map) {
		return partnersMapper.isPartners(map);
	}
	public int idCheck(String id){
		return partnersMapper.idCheck(id);
	}
	public int changePwd(HashMap<String, String> map) {
		String pwd = map.get("pwd");
		map.remove("pwd");
		map.put("pwd", passwordEncoder.encode(pwd));
		return partnersMapper.changePwd(map);
	}
	public int insert(PetVo vo) {
		return petMapper.insert(vo);
	}
	
	
	public int delete(int pet_num) {
		return petMapper.delete(pet_num);
	}
	
	public int update(PetVo vo) {
		return petMapper.update(vo);
	}
	
	public PetVo find(int pet_num) {
		return petMapper.find(pet_num);
	}
	public List<PetVo> mainPet(){
		return petMapper.mainPet();
	}
	
	public List<PetVo> petlist(String id) {
		return petMapper.petlist(id);
	}
	
//	public List<ReservationVo> reservationList() {
//		List<ReservationVo> list = reservationMapper.list();
//		for(ReservationVo vo : list) {
//			System.out.println(vo.toString());
//		}
//		return list;
//	}
	
//	public void updateReserve(int r_num) {
//		reservationMapper.update(r_num);
//	}
}


