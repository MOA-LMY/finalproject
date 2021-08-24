package com.jhta.finalproject.controller.shop;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.AbailityReviewService;
import com.jhta.finalproject.vo.AbailityReviewVo;

@RestController
public class AbailabilityReviewController {
	@Autowired AbailityReviewService abailityReviewService;
	@RequestMapping(value = "/shop/abailityReview",produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> map(String id, int g_num){
		HashMap<String, Object> map = new HashMap<String, Object>();
			HashMap<String, Object> m = new HashMap<String, Object>();
			System.out.println("id넘어옴"+id);
			m.put("id", id);
		AbailityReviewVo vo =	 abailityReviewService.abailityReview(m);	
			int p_num = vo.getP_num();
			int g_num1 = vo.getG_num();
			System.out.println(p_num);
			System.out.println(g_num1);
			if(p_num!=0&& g_num==g_num1) {
					
				
				
				
			}
			
			
			
			
			
			if(id!=null) {
				map.put("result", "success");
			}else {
				map.put("result", "fail");
			}
			return map;
	}
	
}
