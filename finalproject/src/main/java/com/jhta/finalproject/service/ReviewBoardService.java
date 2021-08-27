package com.jhta.finalproject.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.ReviewBoardVo;
import com.jhta.finalproject.vo.ReviewListBoardVo;
import com.jhta.finalproject.vo.ReviewListBoardVo2;
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
	
	public List<ReviewListBoardVo> list(){
		return mapper.list();
	}
	
	public List<ReviewListBoardVo> list2(){
		return mapper.list2();
	}
	public List<ReviewListBoardVo2> list3(int rb_num){
		return mapper.list3(rb_num);
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
	public List<ReviewListBoardVo> selectReviewList(HashMap<String, Object> g_num) {
		return mapper.selectReviewList(g_num);
	}
	public ReviewListBoardVo selectReviewList2(int rb_num) {
		return mapper.selectReviewList2(rb_num);
	}
	public int getrb_num() {
		return mapper.getrb_num();
	}
	public List<ReviewListBoardVo> selectReviewList3(HashMap<String, Object> map){
		return mapper.selectReviewList3(map);
	}
	public int countAll(HashMap<String, Object> map) {
		return mapper.countAll(map);
	}
}
