package com.jhta.finalproject.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jhta.finalproject.service.ReviewBoardService;
import com.jhta.finalproject.service.ReviewReplyService;
import com.jhta.finalproject.vo.ReviewBoardVo;
import com.jhta.finalproject.vo.ReviewListBoardVo;
import com.jhta.finalproject.vo.ReviewReplyVo;

@Controller
public class Admin_BoardReviewController {
	@Autowired private ReviewBoardService reviewBoardService;
	@Autowired private ReviewReplyService reviewReplyService;
	
	@RequestMapping(value = "/admin/board_review", method = RequestMethod.GET)
	public String reviewboard(Model model) {


		
		
	//	List<ReviewListBoardVo> rblist = service.selectReviewList2();
	//	 ReviewListBoardVo rb_vo = reviewBoardService.selectReviewList2(rb_num);
		
		   //rb_num으로 셀렉구문으로 얻어와서 팝업창띄우고 거기에 셀렉값뿌린후 밑에 리플라이인서트값넣은후 버튼누르면 인서트 되게. ㄱ,흐
		//버튼바뀌고 상품디테일에 리스트남기게..  내일 마무리하고 목금토 css로 마무리하기
			
		
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
//		model.addAttribute("list2",rblist); 
		return "/admin/board_review";
	}
}
