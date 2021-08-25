package com.jhta.mybatis.mapper;
import java.util.List;


import com.jhta.finalproject.vo.ReviewReplyVo;

public interface ReviewReplyMapper {
	int insert(ReviewReplyVo vo);
	List<ReviewReplyVo> SelectOne(int rp_num);
	 int getrp_num();
	 List<ReviewReplyVo> Selectlist();
}
