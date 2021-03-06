package com.jhta.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import com.jhta.finalproject.vo.DelInfoVo;
import com.jhta.finalproject.vo.MemberDelVo;

public interface DelinfoMapper {

	int insert(DelInfoVo vo);
	int d_numfind(String m_id);
	int d_numfind2(String m_id);
	MemberDelVo memberdelinfo(String m_id);
	List<MemberDelVo> submemberdellist(String m_id);
	DelInfoVo delinfo(int d_num);

	int delinfoupdate1(String m_id);
	int delinfoupdate2(int d_num);

	int mainsubdelupdate (String m_id);
	int submaindelupdate (HashMap<String, Object> map);
	int delete(int d_num);
	int addressCount(String m_id);
}
