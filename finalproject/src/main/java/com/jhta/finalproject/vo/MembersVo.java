package com.jhta.finalproject.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class MembersVo {
	private String m_id;
	private String m_pwd;
	private String m_name;
	private String m_phone;
	private String m_email;
	private String m_addr;
	private String m_birth;
	private int m_enabled;
	private int m_points;
}
