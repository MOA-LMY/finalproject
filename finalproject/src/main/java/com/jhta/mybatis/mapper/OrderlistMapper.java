package com.jhta.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import com.jhta.finalproject.vo.GoodOrderlistGcsVo;
import com.jhta.finalproject.vo.OrderListVo;
import com.jhta.finalproject.vo.OrdersVo;

public interface OrderlistMapper {
	
	int insert(OrderListVo vo);
	OrdersVo neworder(String m_id);
	List<GoodOrderlistGcsVo> neworderlist(int o_num);
	int orderlistgscnumupdate (HashMap<String , Object> map);
}
