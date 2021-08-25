package com.jhta.finalproject.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data

public class BasketlistorderVo {

	private int g_num;
	private String g_name;
	private int g_price;
	private String g_content;
	private String g_orgimg;
	private String g_saveimg;
	private Date g_regdate;
	private int g_hit;
	private int g_ea;
	private int gc_num;
	
	private int bk_num; 
	private int bk_totalprice;
	private int bk_ea; 
	private int bs_num; 
	private int o_num; 
	private int gcs_num; 

	private int c_subnum;
	private int sz_ssubnum;
	
}
