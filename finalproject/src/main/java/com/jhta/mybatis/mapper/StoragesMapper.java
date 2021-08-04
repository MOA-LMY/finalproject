package com.jhta.mybatis.mapper;

import java.util.List;

import com.jhta.finalproject.vo.StoragesVo;



public interface StoragesMapper {
	int insert(StoragesVo vo);
	List<StoragesVo> list();
	int delete(int st_num);
	StoragesVo find(int st_num);
	int update(StoragesVo vo);
}
