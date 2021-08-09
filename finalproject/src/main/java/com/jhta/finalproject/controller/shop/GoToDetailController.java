package com.jhta.finalproject.controller.shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.finalproject.service.ColorService;
import com.jhta.finalproject.service.GcsService;
import com.jhta.finalproject.service.GoodsDetailService;
import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.service.GoodscategoryService;
import com.jhta.finalproject.vo.ColorVo;
import com.jhta.finalproject.vo.GoodsDetailVo;
import com.jhta.finalproject.vo.GoodsVo;
import com.jhta.finalproject.vo.GcsVo;


@Controller
public class GoToDetailController {
	@Autowired GoodsService goodsService;
	@Autowired GoodsDetailService goodsDetailServie;
	@Autowired ColorService colorService;
	@Autowired GcsService gcsService;
	@RequestMapping("/shop/gotodetail2")
	public String gotodetial(int g_num, Model model ) {

		
		System.out.println(g_num +"��ȣ �Ѿ����" );
		GoodsVo vo = goodsService.goodsfind(g_num);

	
		try {
		System.out.println(g_num +"��ȣ �Ѿ����" );
	//GoodsVo vo = goodsService.find(g_num);
	//	List<GoodsDetailVo> vo2 = goodsDetailServie.selectOne(g_num);
	//	ColorVo cv = colorService.SelectOne(g_num);
	//	System.out.println(vo);
	//	System.out.println("colorVo�Ѿ��");
	//	System.out.println(cv);


	//	model.addAttribute("vo", vo);
	//	model.addAttribute("vo2", vo2);
	//	model.addAttribute("cv", cv);
		List<GcsVo> vo = gcsService.SelectAll(g_num);
		GoodsVo vo2 = goodsService.goodsfind(g_num);
		
		System.out.println(vo+"gcs db�� �ߵ���");

		//model.addAttribute("vo", vo);
		model.addAttribute("vo", vo);
		model.addAttribute("vo2", vo2);
		}catch (NumberFormatException ne) {
			// TODO: handle exception
			ne.printStackTrace();

		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	

		return  "/shop/gotodetail2";
	}
}
