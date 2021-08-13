package com.jhta.finalproject.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class PartnersVo {
	private String pt_id;
	private String pt_pwd;
	private String pt_name;
	private String pt_phone;
	private String pt_email;
	private String pt_addr;
	private String pt_detail_addr;
	private String pt_code;
	private int pt_enabled;
}
