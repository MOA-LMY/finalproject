package com.jhta.mybatis.mapper;

import java.util.List;

import com.jhta.finalproject.vo.ReviewBoardVo;

public interface ReviewBoardMapper {
	int insert(ReviewBoardVo vo);
	List<ReviewBoardVo> list();
	ReviewBoardVo getinfo(int rb_num);
	int delete(int rb_num);
	int update(ReviewBoardVo vo);
}
