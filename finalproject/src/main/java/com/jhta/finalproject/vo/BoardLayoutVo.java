package com.jhta.finalproject.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class BoardLayoutVo {
	private int bl_num;
	private String bl_writer;
	private String bl_title;
	private String bl_content;
	private String bl_orgimg;
	private String bl_saveimg;
	private Date bl_date;
	private int bl_hit;
	private int bl_pwd;
}
