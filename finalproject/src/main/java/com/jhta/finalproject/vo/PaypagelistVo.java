package com.jhta.finalproject.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PaypagelistVo {
	private int p_num;
	private String p_methods;
	private Date p_date;
	private int p_totalprice;
	private int p_usecoupon;
	
	
	private int o_num;
	private String o_proccess;
	
	
	private String d_recname;
	private String d_recphone;
	private String d_recaddr;
	private String d_recdetailaddr;
	

}
