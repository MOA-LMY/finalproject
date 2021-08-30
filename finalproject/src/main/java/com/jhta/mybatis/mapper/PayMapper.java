package com.jhta.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import com.jhta.finalproject.vo.PayVo;
import com.jhta.finalproject.vo.PaypagelistVo;

public interface PayMapper {
int insert(PayVo vo);
int paygetcount(String m_id);
int allpaygetcount();

List<PaypagelistVo> paypagelist(HashMap<String, Object>map);
List<PaypagelistVo> paymamberpagelist(HashMap<String, Object>map);

}
