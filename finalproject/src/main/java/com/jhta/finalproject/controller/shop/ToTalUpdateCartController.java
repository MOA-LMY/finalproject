package com.jhta.finalproject.controller.shop;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.ognl.ASTNotEq;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jhta.finalproject.service.AddToCartService;
import com.jhta.finalproject.service.BasketlistService;
import com.jhta.finalproject.vo.UpdateBkEaVo;

@RestController
public class ToTalUpdateCartController {
		@Autowired AddToCartService addToCartService;
		@Autowired BasketlistService basketlistService;
		@RequestMapping(value = "/shop/ToTalUpdate",produces = {MediaType.APPLICATION_JSON_VALUE})
		public HashMap<String, Object> map(int bk_ea,int bk_totalprice,int gcs_num ) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			HashMap<String, Object> m = new HashMap<String, Object>();
			m.put("bk_ea",bk_ea);
			m.put("bk_totalprice",bk_totalprice);
			m.put("gcs_num",gcs_num);
		int n=	basketlistService.update_Total(m);
			if(n>0) {
				map.put("result", "success");
			}else {
				map.put("result", "fail");
			}
			return map;
		}

}
