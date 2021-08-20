package com.jhta.finalproject.controller.shop;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.DelinfoService;
import com.jhta.finalproject.vo.DelInfoVo;
import com.jhta.finalproject.vo.MemberDelVo;

@RestController
public class DelAddController {
	@Autowired DelinfoService delinfoservice; 
@RequestMapping(value = "/shop/deladd",produces = {MediaType.APPLICATION_JSON_VALUE})
public HashMap<String, Object> deladd(String add_d_recname, String add_d_recphone, String d_recaddrinfo ,String  d_recdetailaddr ) {
	HashMap<String, Object> map = new HashMap<String, Object>(); 
	if(add_d_recname.equals("") || add_d_recphone.equals("")||d_recaddrinfo.equals("")||d_recdetailaddr.equals("")) {
		System.out.println("null 포함 실패 ");
	
		List<MemberDelVo> memberdellist = delinfoservice.submemberdellist("qwer");
		map.put("memberdellist", memberdellist);
		
	}else {
		
		System.out.println(add_d_recname+" "+ add_d_recphone +" "+ d_recaddrinfo +" "+ d_recdetailaddr );
		
		int n =delinfoservice.insert(new DelInfoVo(0, add_d_recname, add_d_recphone, d_recaddrinfo, d_recdetailaddr, 0, "qwer"));
		if(n>0) {
			System.out.println("성공");
		}
		List<MemberDelVo> memberdellist = delinfoservice.submemberdellist("qwer");
		map.put("memberdellist", memberdellist);
	
	}

	return map;
}
	
}
