package com.jhta.finalproject.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class CouponBoxVo {
	private String c_code;
	private int c_ea;
	private int c_usedcoupon;
}
