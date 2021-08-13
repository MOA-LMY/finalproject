package com.jhta.finalproject.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class GcsListVo {
	private int g_num;
	private String g_name;
	private int g_price;
	private String g_content;
	private String g_orgimg;
	private String g_saveimg;
	private int g_ea;
	private int gc_num;
	private String c_colorcode;
	private String c_colorname;
	private String sz_sizename;
}
