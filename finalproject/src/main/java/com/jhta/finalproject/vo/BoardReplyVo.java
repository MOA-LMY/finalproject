package com.jhta.finalproject.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class BoardReplyVo {
	private int br_num;
	private int br_ref;
	private int br_level;
	private String br_content;
	private Date br_date;
}
