package com.jhta.finalproject;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.jhta.finalproject.service.OrdersService;
import com.jhta.finalproject.vo.OrdersVo;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

public class OrdersTest {
	
	@Autowired OrdersService service;
	@Test
	public void insert() {
		
		int n = service.insert(new OrdersVo(0, "¹Ì¿Ï·á", "test", 21));
		assertEquals(n, 1);
	}
}
