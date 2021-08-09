package com.jhta.finalproject;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.jhta.finalproject.service.GoodsService;

import com.jhta.finalproject.vo.GoodsVo;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class GoodsTest {
	
	@Autowired GoodsService service;
	
	@Test
	public void select() {
		
//		List<GoodsVo> list = service.list();
//		int tot = list.size();
//		System.out.println(tot);
//		assertEquals(tot, 2);
	}
	
	@Test
	public void insert() {
		//int n = service.insert(new GoodsVo(0,"asd", 1000, "asd", "asd", "asd", null , 132, 123, "asd",1));
		//assertEquals(n, 1);
	
	
	}
	
	
}
