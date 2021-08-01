package com.jhta.finalproject;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import com.jhta.finalproject.vo.BasketlistVo;

import com.jhta.mybatis.mapper.BasketlistMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BasketlistTest {

@Autowired private BasketlistMapper mapper;
	
	@Test
	public void insert() {
		
		
		int n = mapper.insert(new BasketlistVo(0, 1000, 10, 1,25,2));
		
		assertEquals(n, 1);
	}
	
	
}
