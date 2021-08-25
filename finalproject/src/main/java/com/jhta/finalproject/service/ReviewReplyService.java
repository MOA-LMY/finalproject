package com.jhta.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.BoardReplyVo;
import com.jhta.finalproject.vo.ReviewBoardVo;
import com.jhta.finalproject.vo.ReviewReplyVo;
import com.jhta.mybatis.mapper.ReviewReplyMapper;

@Service
public class ReviewReplyService {
	@Autowired ReviewReplyMapper mapper;
	
	public int insert(ReviewReplyVo vo ) {
		return mapper.insert(vo);
	}
	public	List<ReviewReplyVo> SelectOne(int rp_num) {
		return mapper.SelectOne(rp_num);
	}
	public int getrp_num() {
		return mapper.getrp_num();
	}
	public List<ReviewReplyVo> Selectlist(){
		return mapper.Selectlist();
	}
	
	
	
}
