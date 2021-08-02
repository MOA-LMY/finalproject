package com.jhta.finalproject.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class GoodsFormDataVo {
	private int g_num;
	private String g_name;
	private int g_price;
	private String g_content;
	private int g_hit;
	private int g_ea;
	private String g_info;
	private int gc_num;
	private MultipartFile file1;
}

