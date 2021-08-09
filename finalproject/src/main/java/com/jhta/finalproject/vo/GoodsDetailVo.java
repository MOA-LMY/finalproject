package com.jhta.finalproject.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class GoodsDetailVo {
	private int gd_num;
	private String gd_orgimg1;
	private String gd_saveimg1;
	private String gd_orgimg2;
	private String gd_saveimg2;
	private String gd_orgimg3;
	private String gd_saveimg3;
	private int g_num;
}