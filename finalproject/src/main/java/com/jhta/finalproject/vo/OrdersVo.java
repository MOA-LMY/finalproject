package com.jhta.finalproject.vo;

import lombok.Data;

import lombok.AllArgsConstructor;

import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class OrdersVo {
	
	private int o_num;
	private String o_process;
	private String m_id;
	private int d_num;
}
