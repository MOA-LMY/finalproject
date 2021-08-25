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
import com.jhta.finalproject.vo.ReviewListBoardVo2;
import com.jhta.finalproject.vo.ReviewReplyVo;

@Controller
public class Admin_BoardReviewController {
	@Autowired private ReviewBoardService reviewBoardService;
	@Autowired private ReviewReplyService reviewReplyService;
	
	@RequestMapping(value = "/admin/board_review", method = RequestMethod.GET)
	public String reviewboard(Model model) {
		List<ReviewListBoardVo> list =	reviewBoardService.list2();

		   //rb_num으로 셀렉구문으로 얻어와서 팝업창띄우고 거기에 셀렉값뿌린후 밑에 리플라이인서트값넣은후 버튼누르면 인서트 되게. ㄱ,흐
		//버튼바뀌고 상품디테일에 리스트남기게..  내일 마무리하고 목금토 css로 마무리하기
			
		
	//	List<ReviewReplyVo> selectlist = reviewReplyService.Selectlist();

		
	//	int n= selectlist.size();
	//System.out.println(n+"셀렉길ㄹ이");
	//	String check="";
		
	//	if(n==0) {
	//	check =null;	
	//	}
	//	System.out.println(check);
	///	model.addAttribute("check",check);
		model.addAttribute("list",list);
		return "/admin/board_review";
	}
}
