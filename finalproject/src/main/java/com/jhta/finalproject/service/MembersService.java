package com.jhta.finalproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.MembersVo;
import com.jhta.mybatis.mapper.MembersMapper;
@Service
public class MembersService {
	@Autowired MembersMapper mapper;
	public int insert(MembersVo vo) {
		return mapper.insert(vo);
	}
	public int delete(String id) {
		return mapper.delete(id);
	}
	public int update(MembersVo vo) {
		return mapper.update(vo);
	}
	public int isMember(String m_id) {
		return mapper.isMember(m_id);
	}
	
}
