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
import com.jhta.finalproject.vo.ReviewListBoardVo2;
import com.jhta.finalproject.vo.ReviewReplyVo;


@RestController
public class Admin_ReviewReplyUpdateController {
	@Autowired private ReviewBoardService reviewBoardService;
	@Autowired private ReviewReplyService reviewReplyService;
	
	@RequestMapping(value = "/shop/reviewReplyUpdate",produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> ReviewReplysForm(int rp_num,int rb_num,String rp_content) {
		HashMap<String, Object> map = new  HashMap<String, Object>();
		HashMap<String, Object> m = new  HashMap<String, Object>();
		
		      
				int n= reviewReplyService.replyUpdate(new ReviewReplyVo(rp_num, rp_content, null, rp_num));
		    
		 	
		 
		 
		      	
	
		 if(n>0) {
			 map.put("result","success");	
			 System.out.println("업데이트성공");
		 }else {
			 map.put("result","fail"); 
		 }
	return map;
	
	}
	
}
