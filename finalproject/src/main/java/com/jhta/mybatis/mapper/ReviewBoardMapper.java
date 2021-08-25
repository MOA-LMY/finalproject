package com.jhta.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import com.jhta.finalproject.vo.ReviewBoardVo;
import com.jhta.finalproject.vo.ReviewListBoardVo;
import com.jhta.finalproject.vo.ReviewReplyVo;

public interface ReviewBoardMapper {
	int insert(ReviewBoardVo vo);
	List<ReviewBoardVo> list();
	List<ReviewListBoardVo> selectReviewList(HashMap<String, Object> g_num);
	ReviewListBoardVo selectReviewList2(int rb_num);
	ReviewBoardVo getinfo(int rb_num);
	int delete(int rb_num);
	int update(ReviewBoardVo vo);
	int getrb_num();
}
