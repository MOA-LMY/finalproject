package com.jhta.mybatis.mapper;

import java.util.HashMap;

import com.jhta.finalproject.vo.BasketlistVo;
import com.jhta.finalproject.vo.UpdateBkEaVo;

public interface BasketlistMapper {
int insert(BasketlistVo vo);
int update_BkEa(UpdateBkEaVo vo);
int update_Total(HashMap<String, Object> uptot);
int Delete_CartList(HashMap<String, Object> bk_num);
int Delete_CartListAll();
BasketlistVo SelectAll(int gcs_num);
int SelectBkEa(HashMap<String, Object> Bkea);
int SelectBkPrice(HashMap<String, Object> Bkprice);

}
