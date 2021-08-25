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
	
	@RequestMapping(value = "/shop/reviewReplysForm",produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> ReviewReplysForm(int rb_num) {
		HashMap<String, Object> map = new  HashMap<String, Object>();
		HashMap<String, Object> m = new  HashMap<String, Object>();
		 ReviewListBoardVo rb_vo = reviewBoardService.selectReviewList2(rb_num);
		
		 System.out.println(rb_vo+"한리뷰 셀렉한값");
		 
		 if(rb_vo!=null) {
			 map.put("result","success");
			 map.put("rb",rb_vo);
		 }else {
			 map.put("result","success"); 
		 }

	return map;
	
	}
	
	
	
	
	@RequestMapping(value = "/shop/reviewReplys",produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> ReviewReplys(int rb_num, Model model) {
		HashMap<String, Object> map = new  HashMap<String, Object>();
		
		
		
		//int n =  reviewReplyService.insert(new ReviewReplyVo(0, rp_content, null, rb_num));
		
		List<ReviewReplyVo> selectlist = reviewReplyService.Selectlist();
		
		int n= selectlist.size();
	
		String check="";
		check ="null";	
		if(n==0) {
		check ="null";	
		}else {
		check = "exsit";	
		}
		model.addAttribute("ceck",check);
		model.addAttribute("list",reviewBoardService.list()); 
	//	model.addAttribute("list2",rblist); 
		return map;
	}
}
