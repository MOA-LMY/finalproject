package com.jhta.finalproject.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jhta.finalproject.mail.AuthKey;
import com.jhta.finalproject.mail.MailServiceImpl;
import com.jhta.finalproject.service.DelinfoService;
import com.jhta.finalproject.service.EcEventCouponService;
import com.jhta.finalproject.service.MembersService;
import com.jhta.finalproject.service.ReservationService;
import com.jhta.finalproject.vo.MembersVo;

@Controller
public class MembersController {
	@Autowired
	MembersService service;
	@Autowired
	MailServiceImpl ms;
	@Autowired ReservationService reservationService;
	@Autowired EcEventCouponService	ecEventCouponService;
	@Autowired DelinfoService delinfoService;

	@RequestMapping(value = "login/email", method = { RequestMethod.POST, RequestMethod.GET }, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody HashMap<String, Object> emailOk(String email) {
		HashMap<String, Object> map = null;
		try {
			String key = new AuthKey().getAuthKey(5);
			ms.send("이메일 인증", "인증코드 : " + key, "pcy940531@gmail.com", email, null);
			System.out.println(email);
			map = new HashMap<String, Object>();
			map.put("key", key);
			System.out.println(key);

		} catch (IndexOutOfBoundsException e) {
			e.printStackTrace();
			map.put("key", "fail");
			return map;
		}catch (Exception e) {
			e.printStackTrace();
			map.put("key", "fail");
			return map;
			
		}
		return map;

	}

	@RequestMapping(value = "login/isMember", method = RequestMethod.GET, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody HashMap<String, Boolean> isMember(String id) {
		boolean result = false;
		if (service.isMember(id) == 1) {
			result = true;
		}
		HashMap<String, Boolean> map = new HashMap<String, Boolean>();
		map.put("result", result);
		return map;
	}
	
	@RequestMapping(value = "login/searchPassword", method = { RequestMethod.POST, RequestMethod.GET }, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody HashMap<String, Object> searchPwd(String email,String id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			System.out.println("MembersController CorrectId :" +service.correctIdEmail(id));
			System.out.println("가져온 이메일 :" +email);
			if(email.equals(service.correctIdEmail(id))) {
			String key = new AuthKey().getAuthKey(5);
			ms.send("이메일 인증", "인증코드 : " + key, "pcy940531@gmail.com", email, null);
			System.out.println(email);
			map.put("key", key);
			System.out.println(key);
			}else {
				map.put("key", "fail");
			}
		} catch (IndexOutOfBoundsException e) {
			e.printStackTrace();
			map.put("key", "fail");
			return map;
		}catch(NullPointerException ne) {
			ne.printStackTrace();
			map.put("key", "fail");
			return map;
		}catch(Exception e) {
			map.put("key", "error");
			return map;
		}
		return map;

	}
	@RequestMapping(value = "login/searchId", method = { RequestMethod.POST, RequestMethod.GET }, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody HashMap<String, Object> searchId(String email) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			String id = service.searchId(email);
			if(id!=null) {
				map.put("id", id);
			}else {
				map.put("id", "fail");
			}
		}catch(NullPointerException ne) {
			map.put("id", "fail");
			System.out.println("null");
		}
		catch (Exception e) {
			map.put("id", "fail");
			e.printStackTrace();
			return map;
		}
		return map;

	}
	@GetMapping("/members/mypage")
	public String membersMypage(Model model,String ad) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = auth.getName();
		
		
		model.addAttribute("reservationNow",reservationService.counting(id));
		model.addAttribute("couponNow", ecEventCouponService.countNow(id));
		model.addAttribute("addressNow", delinfoService.addressCount(id));
		return "members/mypage";
	}
	@GetMapping("/members/editInfo")
	public String membersEditInfo(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = auth.getName();
		MembersVo vo = service.find(id);
		model.addAttribute("vo", vo);
		return "members/editInfo";
	}
}
