package com.jhta.finalproject;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.jhta.finalproject.vo.BasketVo;
import com.jhta.finalproject.vo.DelInfoVo;
import com.jhta.mybatis.mapper.BasketMapper;
import com.jhta.mybatis.mapper.DelinfoMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BasketTest {

@Autowired private BasketMapper mapper;
	
	@Test
	public void insert() {
		
		
		int n = mapper.insert(new BasketVo(0, 1, 1000, "test"));
		
		assertEquals(n, 1);
	}
	
}
