package com.jhta.finalproject.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class FaqVo {
	private int f_num;
	private String f_title;
	private String f_answer;
}
