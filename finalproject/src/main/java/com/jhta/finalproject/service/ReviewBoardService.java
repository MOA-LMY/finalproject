package com.jhta.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.ReviewBoardVo;
import com.jhta.mybatis.mapper.ReviewBoardMapper;

@Service
public class ReviewBoardService {
	@Autowired private ReviewBoardMapper mapper;
	
	public void setMapper(ReviewBoardMapper mapper) {
		this.mapper = mapper;
	}
	
	public int insert(ReviewBoardVo vo) {
		return mapper.insert(vo);
	}
	
	public List<ReviewBoardVo> list(){
		return mapper.list();
	}
	
	public ReviewBoardVo getinfo(int rb_num) {
		return mapper.getinfo(rb_num);
	}
	
	public int delete(int rb_num) {
		return mapper.delete(rb_num);
	}
	
	public int update(ReviewBoardVo vo) {
		return mapper.update(vo);
	}
}