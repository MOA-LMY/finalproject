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
import com.jhta.finalproject.service.MembersService;

@Controller
public class MembersController {
	@Autowired MembersService service;
	@Autowired MailServiceImpl ms;
@RequestMapping(value = "members/email",method = {RequestMethod.POST,RequestMethod.GET}, produces = {MediaType.APPLICATION_JSON_VALUE})
public @ResponseBody HashMap<String, Object> emailOk(String email){
	HashMap<String, Object> map = null;
	try {
	String key = new AuthKey().getAuthKey(5);
	ms.send("�̸��� ����", "�����ڵ带 �߼��߽��ϴ�" +key,"pcy940531@gmail.com", email, null);
	System.out.println(email);
	map = new HashMap<String, Object>();
	map.put("key", key);
	System.out.println(key);
	
	}catch (IndexOutOfBoundsException e) {
		e.printStackTrace();
	}
	return map;

}
@RequestMapping(value="members/isMember", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE})
public @ResponseBody HashMap<String,Boolean> isMember(String id){
	boolean result = false;
	if(service.isMember(id)==1) {
		result = true;
	}
	HashMap<String, Boolean> map = new HashMap<String, Boolean>();
	map.put("result", result);
	return map;
}
}
