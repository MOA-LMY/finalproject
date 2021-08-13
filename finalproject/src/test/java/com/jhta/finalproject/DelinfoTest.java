package com.jhta.finalproject;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.jhta.finalproject.vo.DelInfoVo;
import com.jhta.mybatis.mapper.DelinfoMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class DelinfoTest {
	
	@Autowired private DelinfoMapper mapper;
	
	@Test
	public void insert() {
		
		
		int n = mapper.insert(new DelInfoVo(0,"�̿���", "010", "�����","", 1, "test"));
		
		assertEquals(n, 1);
	}
}
