package com.jhta.finalproject.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.DelInfoVo;
import com.jhta.finalproject.vo.MemberDelVo;
import com.jhta.mybatis.mapper.DelinfoMapper;

@Service
public class DelinfoService {
 
	@Autowired private DelinfoMapper mapper;
	
	public int insert(DelInfoVo vo) {
		
		return mapper.insert(vo);
	
	}
	public int d_numfind(String d_num) {
		return mapper.d_numfind(d_num);
	}
	
	public int d_numfind2(String d_num) {
		return mapper.d_numfind2(d_num);
	}
	
	public MemberDelVo memberdelinfo(String d_num){
		return mapper.memberdelinfo(d_num);
	}
	public List<MemberDelVo> submemberdellist(String d_num){
		return mapper.submemberdellist(d_num);
	}
	
	public DelInfoVo delinfo(int d_num ) {
		return mapper.delinfo(d_num);
	}
	public int delinfoupdate1(String m_id) {
		return mapper.delinfoupdate1(m_id);
	}
	public int delinfoupdate2(int d_num) {
		return mapper.delinfoupdate2(d_num);
	}

	public int mainsubdelupdate(String m_id ) {
		return mapper.mainsubdelupdate(m_id);
	}
	public int submaindelupdate(HashMap<String, Object>map) {
		return mapper.submaindelupdate(map);
	}
	public int delete(int d_num) {
		return mapper.delete(d_num);
	}
	public int addressCount(String m_id) {
		return mapper.addressCount(m_id);
	}
	
	
}
