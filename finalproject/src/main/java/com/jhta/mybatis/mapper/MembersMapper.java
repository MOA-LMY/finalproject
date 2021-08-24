package com.jhta.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import com.jhta.finalproject.sec.CustomUserDetail;
import com.jhta.finalproject.vo.AuthVo;
import com.jhta.finalproject.vo.MembersVo;

public interface MembersMapper {
	int insert(MembersVo vo);
	int delete(String m_id);
	int update(MembersVo vo);
	int isMember(String m_id);
	List<MembersVo> list();
	MembersVo find(String m_id);
	int insertAuth(AuthVo vo);
	CustomUserDetail getAuths(String id);
	String correctIdEmail(String id);
	String searchId(String email);
	int changePwd(HashMap<String, String> map);
	int addpoint(HashMap<String, Object> map);
}
