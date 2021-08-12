package com.jhta.finalproject.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class DelInfoVo {
	private int d_num;
	private String d_recname;
	private String d_recphone;
	private String d_recaddr;
	private String d_recdetailaddr;
	private int d_mainaddr;
	private String m_id;
}
