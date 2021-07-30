package com.jhta.finalproject.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class PayVo {
	private int p_num;
	private String p_methods;
	private Date p_date;
	private int p_totalprice;
	private int p_usecoupon;
}
