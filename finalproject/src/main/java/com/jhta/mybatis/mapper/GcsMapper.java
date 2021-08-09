package com.jhta.mybatis.mapper;

import java.util.List;

import com.jhta.finalproject.vo.GcsVo;

public interface GcsMapper {
	List<GcsVo> SelectAll(int g_num);
}
