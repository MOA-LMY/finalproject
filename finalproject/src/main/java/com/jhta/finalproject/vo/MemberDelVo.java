package com.jhta.finalproject.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberDelVo {
	private String m_id;
	private String m_pwd;
	private String m_name;
	private String m_phone;
	private String m_email;
	private String m_addr;
	private String m_detail_addr;
	private String m_birth;
	private int m_enabled;
	private int m_points;
	private int d_num;
	private String d_recname;
	private String d_recphone;
	private String d_recaddr;
	private String d_recdetailaddr;
	private int d_mainaddr;

}
