package com.jhta.finalproject.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class SalesVo {
	private int snum;
	private int sprice;
	private Date sdate;
	private int sea;
	private int stot;
}
