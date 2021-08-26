package com.jhta.finalproject.admin.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.GcsService;
import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.service.ReviewBoardService;
import com.jhta.finalproject.service.ReviewReplyService;
import com.jhta.finalproject.vo.ReviewBoardVo;
import com.jhta.finalproject.vo.ReviewListBoardVo;
import com.jhta.finalproject.vo.ReviewReplyVo;


@RestController
public class Admin_ReviewReplyController {
	@Autowired private ReviewBoardService reviewBoardService;
	@Autowired private ReviewReplyService reviewReplyService;
	
	@RequestMapping(value = "/shop/reviewReplys",produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> ReviewReplysForm(int rb_num,String rp_content) {
		HashMap<String, Object> map = new  HashMap<String, Object>();
		HashMap<String, Object> m = new  HashMap<String, Object>();
		

	
		 
		 
		 
 
	int n=	reviewReplyService.insert(new ReviewReplyVo(0, rp_content, null, rb_num));
							
		//ReviewListBoardVo rb_vo = reviewBoardService.selectReviewList2(rb_num);
		
	//	 System.out.println(rb_vo+"한리뷰 셀렉한값");

		 if(n>0) {
			 map.put("result","success");	
		 }else {
			 map.put("result","fail"); 
		 }
	return map;
	
	}
	
	
	
	
	
}
