package com.jhta.finalproject.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.sec.CustomUserDetail;
import com.jhta.finalproject.vo.AuthVo;
import com.jhta.finalproject.vo.MembersVo;
import com.jhta.mybatis.mapper.MembersMapper;
@Service
public class MembersService {
	@Autowired MembersMapper mapper;
	@Autowired PasswordEncoder passwordEncoder;
	public int insert(MembersVo vo) {
		String pwd = vo.getM_pwd();
		vo.setM_pwd(passwordEncoder.encode(pwd));
		AuthVo avo = new AuthVo();
		avo.setId(vo.getM_id());
		if(avo.getId().equals("admin")) {
			avo.setAuthority("ROLE_ADMIN");
		}else {
			avo.setAuthority("ROLE_MEMBER");
		}
			mapper.insertAuth(avo);
		return mapper.insert(vo);
	}
	public int delete(String m_id) {
		return mapper.delete(m_id);
	}
	public int update(MembersVo vo) {
		return mapper.update(vo);
	}
	public int isMember(String m_id) {
		return mapper.isMember(m_id);
	}
	public List<MembersVo> list(){
		return mapper.list();
	}
	public MembersVo find(String m_id) {
		return mapper.find(m_id);
	}
	public int insertAuth(AuthVo vo) {
		return mapper.insertAuth(vo);
	}
	public CustomUserDetail userDetail(String id) {
		return mapper.getAuths(id);
	}
	public String correctIdEmail(String id) {
		return mapper.correctIdEmail(id);
	}
	public String searchId(String email) {
		return mapper.searchId(email);
	}
	public int changePwd(HashMap<String, String> map) {
		String pwd = map.get("pwd");
		map.remove("pwd");
		String pwd1 = passwordEncoder.encode(pwd);
		map.put("pwd", pwd1);
		return mapper.changePwd(map);
	}
	public int addpoint(HashMap<String, Object> map) {
		return mapper.addpoint(map);
	}
	public int usepoint(HashMap<String, Object> map) {
		return mapper.usepoint(map);
	}
	
	
}
