package com.jhta.finalproject.vo;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ReviewListBoardVo {
	private String m_id;
	private int rb_num;
	private String rb_title;
	private String rb_content;
	private int rb_stars;
	private String rb_saveimg;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	private Date rb_date;
	private String g_name;
	private String c_colorname;
	private String sz_sizename;
	private int rp_num;
	private String rp_content;
	private String replyCheck;
}
