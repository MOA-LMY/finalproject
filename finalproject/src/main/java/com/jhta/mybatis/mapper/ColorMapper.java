package com.jhta.mybatis.mapper;

import java.util.List;

import com.jhta.finalproject.vo.ColorVo;

public interface ColorMapper {
	ColorVo SelectOne(int g_num);	
	List<ColorVo> colorlist(int g_num);
}
