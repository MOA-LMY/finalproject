package com.jhta.finalproject.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class AddToCartVo {
	private int bk_num;
	private int bk_totalprice;
	private int bk_ea;
	private int bs_num;
	private int o_num;
	private int gcs_num;
	private String c_colorname;
	private String sz_sizename;
	private String g_saveimg;
	private String g_name;
	private int g_price;

	
}
