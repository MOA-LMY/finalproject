package com.jhta.finalproject.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class SalesVo {
	private int s_num;
	private int s_price;
	private Date s_date;
	private int s_ea;
	private int s_tot;
}
