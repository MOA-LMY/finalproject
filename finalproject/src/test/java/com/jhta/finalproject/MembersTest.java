package com.jhta.finalproject;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.jhta.finalproject.service.MembersService;
import com.jhta.finalproject.vo.MembersVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MembersTest {
	@Autowired MembersService service;
	
	@Test
	public void insert() {
		int n = service.insert(new MembersVo("test", "test", "test", "test", "test", "test", "test", 1, 2000));
		assertEquals(n, 1);
	}

}
