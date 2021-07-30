package com.jhta.finalproject.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ReviewReplyVo {
	private int rp_num;
	private int rp_ref;
	private int rp_level;
	private String rp_content;
	private Date rp_date;
}
