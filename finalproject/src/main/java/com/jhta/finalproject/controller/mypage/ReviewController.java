package com.jhta.finalproject.controller.mypage;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jhta.finalproject.page.PageUtil;
import com.jhta.finalproject.service.ReviewBoardService;

@Controller
public class ReviewController {
	@Autowired ReviewBoardService reviewBoardService;
	
	@RequestMapping(value = "/members/reviewList", method = { RequestMethod.POST, RequestMethod.GET }, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody HashMap<String, Object> reviewBoardService(String spageNum) {
		int pageNum=1;
		if(spageNum!=null) {
			pageNum = Integer.parseInt(spageNum);
		}
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String m_id = auth.getName();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("m_id", m_id);
		PageUtil pu = new PageUtil(pageNum, 5, 10, reviewBoardService.countAll(map));
		map.put("startRow", pu.getStartRow());
		map.put("endRow", pu.getEndRow());
		map.put("list", reviewBoardService.selectReviewList3(map));
		map.put("pu",pu);
		return map;
	}
}
