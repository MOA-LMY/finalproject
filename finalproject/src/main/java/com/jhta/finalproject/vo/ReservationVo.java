package com.jhta.finalproject.vo;


import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ReservationVo {
	private int r_num;
	private int r_process;
	private Date r_date;
	private String m_id;
	private int pet_num;
}
