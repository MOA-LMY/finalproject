package com.jhta.finalproject.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class PetVo {
	private int pet_num;
	private String pet_name;
	private String pet_age;
	private String pet_color;
	private int pet_price;
	private String pet_type;
	private String pet_content;
	private String pet_orgimg;
	private String pet_saveimg;
}
