package com.jhta.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import com.jhta.finalproject.vo.OrdersVo;

public interface OrdersMapper {
	
	int insert(OrdersVo vo);
	int geto_num();
	int o_proccessupdate(int o_num);
	int o_proccessupdate2(HashMap<String, Object>map);
}
