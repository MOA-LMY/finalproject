package com.jhta.finalproject.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class GoodsVo {
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

	private int c_subnum;
	private int c_num;
	private String c_colorcode;
	private String c_colorname;
	private int sz_ssubnum;
	private String sz_sizename;
	private int sz_snum;

	

}
