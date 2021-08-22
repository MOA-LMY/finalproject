package com.jhta.finalproject.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.finalproject.vo.AbailityReviewVo;
import com.jhta.mybatis.mapper.AbailityReviewMapper;

@Service
public class AbailityReviewService {
	@Autowired AbailityReviewMapper mapper;
	public AbailityReviewVo  abailityReview(HashMap<String, Object> abaility) {
		return mapper.abailityReview(abaility);
	}
	
}
