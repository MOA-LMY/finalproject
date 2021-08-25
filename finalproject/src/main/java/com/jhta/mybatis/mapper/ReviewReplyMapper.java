package com.jhta.mybatis.mapper;
import java.util.List;

import com.jhta.finalproject.vo.ReviewBoardVo;
import com.jhta.finalproject.vo.ReviewReplyVo;

public interface ReviewReplyMapper {
	int insert(ReviewReplyVo vo);
	ReviewReplyVo SelectOne(int rp_num);
	 int getrp_num();
	 List<ReviewReplyVo> Selectlist();
	 ReviewReplyVo getinfo(int rp_num);
	 int replyUpdate(ReviewReplyVo vo);
	 int delete(int rp_num);
}
