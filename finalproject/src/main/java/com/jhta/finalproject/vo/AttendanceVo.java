package com.jhta.finalproject.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class AttendanceVo {
	private String att_id;
	private String att_point;
	private Date att_date;
}
