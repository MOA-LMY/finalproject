package com.jhta.finalproject.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class EventVo {
	private String e_code;
	private String e_name;
	private String e_content;
	private int e_point;
	private int e_discount;
	private Date e_startdate;
	private Date e_enddate;
	private String e_orgimg;
	private String e_saveimg;
;
}
