package com.jhta.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import com.jhta.finalproject.vo.ReviewBoardVo;
import com.jhta.finalproject.vo.ReviewCountVo;
import com.jhta.finalproject.vo.ReviewListBoardVo;
import com.jhta.finalproject.vo.ReviewListBoardVo2;
import com.jhta.finalproject.vo.ReviewReplyVo;

public interface ReviewBoardMapper {
	int insert(ReviewBoardVo vo);
	List<ReviewListBoardVo> list();
	List<ReviewListBoardVo> list2(HashMap<String, Object> map);
	List<ReviewListBoardVo2> list3(int rb_num);
	List<ReviewListBoardVo> selectReviewList(HashMap<String, Object> m);
	ReviewListBoardVo selectReviewList2(int rb_num);
	ReviewBoardVo getinfo(int rb_num);
	int delete(int rb_num);
	int update(ReviewBoardVo vo);
	int getrb_num();
	List<ReviewListBoardVo> selectReviewList3(HashMap<String, Object> map);
	int countAll(HashMap<String, Object> map);
	List<ReviewCountVo > ReviewCount(HashMap<String, Object> map);
	
	
}
