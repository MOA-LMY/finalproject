package com.jhta.finalproject.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class BasketlitgetallVo {

	private String o_process;
	
	private int bk_num; 
	private int bk_totalprice;
	private int bk_ea; 
	private int bs_num; 
	private int o_num; 

	private int gcs_num;
	
	private int sz_ssubnum;
	private String sz_sizename;
	private int sz_snum; 
	
	private int c_subnum;
	private int c_num;
	private String c_colorname;
	private String c_colorcode;
	
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
	
	private int d_num;
	private String d_recname;
	private String d_recphone;
	private String d_recaddr;
	private String d_recdetailaddr;
	private int d_mainaddr;
	private String m_id;
	
}
