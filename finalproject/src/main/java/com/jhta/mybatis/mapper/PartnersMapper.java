package com.jhta.mybatis.mapper;


import java.util.HashMap;
import java.util.List;

import com.jhta.finalproject.vo.PartnersVo;

public interface PartnersMapper {
	int insert(PartnersVo vo);

 int update(PartnersVo vo) ;
 int delete(String id) ;
 List<PartnersVo> selectAll();

 PartnersVo select(String id);

 PartnersVo isPartners(HashMap<String, String> map);

 int idCheck(String id);
}
