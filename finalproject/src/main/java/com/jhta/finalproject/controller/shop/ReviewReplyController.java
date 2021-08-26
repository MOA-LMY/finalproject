package com.jhta.finalproject.controller.shop;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.ReviewReplyService;
import com.jhta.finalproject.vo.BoardReplyVo;
import com.jhta.finalproject.vo.ReviewReplyVo;

@RestController
public class ReviewReplyController {
		@Autowired ReviewReplyService reviewReplyService;
	
	@RequestMapping(value = "/shop/reviewReply",produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> ReviewReply(int rb_num,String rp_content ) {
			HashMap<String, Object> map = new  HashMap<String, Object>();
			
			
			int n =  reviewReplyService.insert(new ReviewReplyVo(0, rp_content, null, rb_num));
		
				int rp_num = reviewReplyService.getrp_num();
			
		ReviewReplyVo list = reviewReplyService.SelectOne(rp_num);

			
		if(n>0) {
			map.put("result", "success");
			map.put("list",list);
		}else {
			map.put("result", "fail");
		}
		
		return map;
		
	}
	
	
}
