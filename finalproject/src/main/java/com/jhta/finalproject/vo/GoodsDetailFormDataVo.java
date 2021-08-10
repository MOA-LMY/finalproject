package com.jhta.finalproject.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class GoodsDetailFormDataVo {
	private int gd_num;
	private String gd_color;
	private String gd_colorcode;
	private String gd_size;
	private int g_num;
	private MultipartFile file1;
}
