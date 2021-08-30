package com.jhta.finalproject.controller.mypage;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jhta.finalproject.page.PageUtil;
import com.jhta.finalproject.service.EcEventCouponService;
@Controller
public class EcController {
	@Autowired EcEventCouponService ecEventCouponService;
	@RequestMapping(value = "/members/couponList", method = { RequestMethod.POST, RequestMethod.GET }, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody HashMap<String, Object> reservationList(String spageNum) {
		int pageNum=1;
		if(spageNum!=null) {
			pageNum = Integer.parseInt(spageNum);
		}
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String m_id = auth.getName();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("m_id", m_id);
		PageUtil pu = new PageUtil(pageNum, 5, 10, ecEventCouponService.countAll(m_id));
		map.put("startRow", pu.getStartRow());
		map.put("endRow", pu.getEndRow());
		map.put("list", ecEventCouponService.eceventcouponlist2(map));
		map.put("pu",pu);
		return map;
	}
	@RequestMapping(value = "/members/couponDelete", method = { RequestMethod.POST}, produces = {
			MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody HashMap<String, Object> delete(int ec_num) {
		HashMap<String, Object> map = new HashMap<String, Object>();
			String c_code = ecEventCouponService.findCcode(ec_num);
			int n1 = ecEventCouponService.deleteEc(ec_num);
			int n2 = ecEventCouponService.deleteCou(c_code);
		if(n1>0&&n2>0) {
			map.put("result", "success");
		}else {
			map.put("result", "fail");
		}
		return map;
	}
}
