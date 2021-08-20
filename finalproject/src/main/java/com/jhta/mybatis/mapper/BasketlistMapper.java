package com.jhta.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import com.jhta.finalproject.vo.BasketlistVo;
import com.jhta.finalproject.vo.UpdateBkEaVo;

public interface BasketlistMapper {
int insert(BasketlistVo vo);
int updateBk(HashMap<String, Object> updatebk);
int Delete_CartList(HashMap<String, Object> bk_num);
int Delete_CartListAll();
List<BasketlistVo> SelectAll(int gcs_num);
int SelectBkEa(HashMap<String, Object> Bkea);
int SelectBkPrice(HashMap<String, Object> Bkprice);
BasketlistVo SelectBkea2(HashMap<String, Object> Bkea2);
BasketlistVo SelectBkprice2(HashMap<String, Object> Bkprice2);
;

}
