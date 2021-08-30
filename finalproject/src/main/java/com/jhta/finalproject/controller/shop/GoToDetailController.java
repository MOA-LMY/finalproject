package com.jhta.finalproject.controller.shop;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.finalproject.service.ColorService;
import com.jhta.finalproject.service.GcsService;
import com.jhta.finalproject.service.GoodsDetailService;
import com.jhta.finalproject.service.GoodsService;
import com.jhta.finalproject.service.GoodscategoryService;
import com.jhta.finalproject.service.ReviewBoardService;
import com.jhta.finalproject.vo.ColorVo;
import com.jhta.finalproject.vo.GoodsDetailVo;
import com.jhta.finalproject.vo.GoodsVo;
import com.jhta.finalproject.vo.ReviewCountVo;
import com.jhta.finalproject.vo.GcsVo;


@Controller
public class GoToDetailController {
	@Autowired GoodsService goodsService;
	@Autowired GoodsDetailService goodsDetailServie;
	@Autowired ColorService colorService;
	@Autowired GcsService gcsService;
	@Autowired GoodsDetailService goodsDetailService;
	@Autowired ReviewBoardService reviewBoardService;
	@RequestMapping("/shop/gotodetail2")
	public String gotodetial(int g_num, Model model ) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = auth.getName();
		System.out.println("id :" + id);
		model.addAttribute("id", id);
		System.out.println(g_num +"占쏙옙호 占싼억옙占쏙옙占�" );
//		GoodsVo vo = goodsService.goodsfind(g_num);

	
		try {
		System.out.println(g_num +"占쏙옙호 占싼억옙占쏙옙占�" );
	//GoodsVo vo = goodsService.find(g_num);
	//	List<GoodsDetailVo> vo2 = goodsDetailServie.selectOne(g_num);
	//	ColorVo cv = colorService.SelectOne(g_num);
	//	System.out.println(vo);
	//	System.out.println("colorVo占싼억옙占�");
	//	System.out.println(cv);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("g_num", g_num);

		List<ReviewCountVo> rcvo =    reviewBoardService.ReviewCount(map);
			System.out.println(rcvo+"카운트값들으으으으으으ㅡㅇㄹ별");
	
			
		int	tot_stars =0;
		int	tot_cnt =0;
		int stars =0;
		int cnt =0;
		int stars_avg = 0;
			for(int i=0; i<rcvo.size(); i++) {
			 cnt = rcvo.get(i).getCnt();
				
				
			 stars= rcvo.get(i).getRb_stars();		
			
			
				
			System.out.println(stars+"stars값");
					System.out.println(cnt+"cnt값");
			tot_stars += (cnt*stars);
			tot_cnt += cnt;
				
			}
			System.out.println(tot_stars +"star토탈값");
			System.out.println(tot_cnt+"cnt토탈값");
			//System.out.println((tot_stars)/tot_cnt+"평균값");			

			if(tot_stars!=0&&cnt!=0) {
			stars_avg = Math.round((tot_stars)/tot_cnt);
				System.out.println( stars_avg );
			}

		

			
			
		
		//	model.addAttribute("vo", vo);
	//	model.addAttribute("vo2", vo2);
	//	model.addAttribute("cv", cv);
		List<GcsVo> vo = gcsService.SelectAll(g_num);
		GoodsVo vo2 = goodsService.goodsfind(g_num);
		GoodsDetailVo vo3 = goodsDetailService.selectOne(g_num);
		System.out.println(vo+"gcs db占쏙옙 占쌩듸옙占쏙옙");
		
		//model.addAttribute("vo", vo);
		model.addAttribute("vo", vo);
		model.addAttribute("vo2", vo2);
		model.addAttribute("vo3", vo3);
		model.addAttribute("stars_avg",stars_avg);
		model.addAttribute("rviewerCount",tot_cnt);
		}catch (NumberFormatException ne) {
			// TODO: handle exception
			ne.printStackTrace();

		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	
		
		

		
		
		
		return  "/shop/gotodetail6";
	}
}
