package com.jhta.finalproject.controller;


import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jhta.finalproject.mail.AuthKey;
import com.jhta.finalproject.mail.MailServiceImpl;

@Controller
public class MembersController {

	@Autowired MailServiceImpl ms;
@RequestMapping(value = "members/email",produces = {MediaType.APPLICATION_JSON_VALUE})
public @ResponseBody HashMap<String, Object> emailOk(String email,String domain){
	String key = new AuthKey().getAuthKey(5);
	ms.send("이메일 인증", "인증코드를 발송했습니다\n" +key,"pcy940531@gmail.com", email+"@"+domain, null);
	System.out.println(email+"@"+domain);
	HashMap<String, Object> map = new HashMap<String, Object>();
	map.put("key", key);
	System.out.println(key);
	return map;
}
}
