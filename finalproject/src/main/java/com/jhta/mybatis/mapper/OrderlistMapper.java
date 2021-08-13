package com.jhta.mybatis.mapper;

import java.util.List;

import com.jhta.finalproject.vo.OrderListVo;
import com.jhta.finalproject.vo.OrdersVo;

public interface OrderlistMapper {
	
	int insert(OrderListVo vo);
	OrdersVo neworder(String m_id);
	List<OrderListVo> neworderlist(int o_num);
}
