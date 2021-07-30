package com.jhta.finalproject.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderListVo {
	private int ol_num;
	private int ol_totalprice;
	private int ol_ea;
	private int o_num;
	private int g_num;

}
