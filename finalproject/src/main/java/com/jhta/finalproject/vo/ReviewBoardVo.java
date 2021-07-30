package com.jhta.finalproject.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ReviewBoardVo {
	private int rb_num;
	private String rb_title;
	private String rb_content;
	private Date rb_date;
	private int rb_stars;
	private String rb_orgimg;
	private String rb_saveimg;
}
