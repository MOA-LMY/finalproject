package com.jhta.finalproject.service;

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
}
