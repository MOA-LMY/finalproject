package com.jhta.finalproject.vo;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ReviewReplyVo {
	private int rp_num;
	private String rp_content;
	private Date rp_date;
	private int rb_num;
}
