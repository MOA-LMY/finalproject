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
@RequestMapping(value = "members/email",method = {RequestMethod.POST,RequestMethod.GET}, produces = {MediaType.APPLICATION_JSON_VALUE})
public @ResponseBody HashMap<String, Object> emailOk(String email){
	HashMap<String, Object> map = null;
	try {
	String key = new AuthKey().getAuthKey(5);
	ms.send("이메일 인증", "인증코드를 발송했습니다" +key,"pcy940531@gmail.com", email, null);
	System.out.println(email);
	map = new HashMap<String, Object>();
	map.put("key", key);
	System.out.println(key);
	
	}catch (IndexOutOfBoundsException e) {
		e.printStackTrace();
	}
	return map;

}
}
