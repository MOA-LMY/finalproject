package com.jhta.finalproject.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class PetFormDataVo {
	private int pet_num;
	private String pet_name;
	private String pet_age;
	private String pet_color;
	private int pet_price;
	private String pet_type;
	private String pet_content;
	private int r_num;
	private String pt_id;
	private MultipartFile file1;
}
