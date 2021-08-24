package com.jhta.finalproject.vo;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@AllArgsConstructor
@Data
@NoArgsConstructor
public class ReservationListVo {
	
	private int r_num;
	private int r_proccess;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	private Date r_date;
	private String m_id;
	private int pet_num;
	private String pet_name;
	private String pet_age;
	private String pet_color;
	private int pet_price;
	private String pet_type;
	private String pet_content;
	private String pt_id; 
	
}
