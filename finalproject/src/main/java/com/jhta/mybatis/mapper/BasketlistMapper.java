package com.jhta.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import com.jhta.finalproject.vo.BasketlistVo;
import com.jhta.finalproject.vo.BasketlistorderVo;
import com.jhta.finalproject.vo.UpdateBkEaVo;

public interface BasketlistMapper {
int insert(BasketlistVo vo);
int updateBk(HashMap<String, Object> updatebk);
int Delete_CartList(HashMap<String, Object> bk_num);
int Delete_CartListAll();
List<BasketlistVo> SelectAll(HashMap<String, Object> map);
int SelectBkEa(HashMap<String, Object> Bkea);
int SelectBkPrice(HashMap<String, Object> Bkprice);
BasketlistVo SelectBkea2(HashMap<String, Object> Bkea2);
BasketlistVo SelectBkprice2(HashMap<String, Object> Bkprice2);
int bsketlistgscnumupdate (HashMap<String, Object> map);
List<BasketlistorderVo> basketlistorder(int bs_num);
int basketlitgeto_num(int bs_num);
}
