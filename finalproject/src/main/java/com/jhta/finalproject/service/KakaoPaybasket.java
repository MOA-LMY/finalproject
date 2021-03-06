package com.jhta.finalproject.service;

import org.springframework.stereotype.Service;

import lombok.extern.java.Log;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.MediaTypeEditor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.jhta.finalproject.vo.BasketlistorderVo;
import com.jhta.finalproject.vo.GoodOrderlistGcsVo;
import com.jhta.finalproject.vo.KakaoPayApprovalVO;
import com.jhta.finalproject.vo.KakaoPayReadyVO;

@Service
@Log
public class KakaoPaybasket {
	

	@Autowired BasketlistService basketlistservice;
private static final String HOST = "https://kapi.kakao.com";
    
 
 int ol_totalprice=0;
 String opencoupon ="";
 
 String sizes="";
 String colors="";
 String s_bs_num = ""; 
 String Stotalprice="";
 String snumberckeck="";
    private KakaoPayReadyVO kakaoPayReadyVO;
    private KakaoPayApprovalVO kakaoPayApprovalVO;
    public String kakaoPayReady(int bs_num , String totalprice ,String coupon,String numberckeck ) {
    	
    	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    	String id = auth.getName();
    	
    	 int totalol_ea =0; 
    	 snumberckeck = numberckeck;
    	 String str = totalprice.trim();
    	 Stotalprice = str.substring(0, str.length() - 1);
         System.out.println("coupon "+coupon+"snumberckeck: "+snumberckeck+"Stotalprice: "+Stotalprice);
         String g_name ="/";
         opencoupon =coupon.trim();
    	
         List<BasketlistorderVo> basketlist =basketlistservice.basketlistorder(bs_num); 
    	for(BasketlistorderVo vo : basketlist) {
    		totalol_ea+= vo.getBk_ea();
    		
    		g_name+= vo.getG_name()+"-";
    		
    		int intsizes = vo.getSz_ssubnum();
			
			System.out.println("@@@@@@@@@@@@@@intsizes@@@@@@@@@@@@@@" + intsizes);

			if (intsizes==1) {
				g_name+="?????????:S-";
			} else if (intsizes==2) {
				g_name+="?????????:M-";
			} else if (intsizes==3) {
				g_name+="?????????:L-";
			} else {
				g_name+="?????????:FREE/";
			}

			//??????
			int intcolor = vo.getC_subnum();
			System.out.println("@@@@@@@@@@@@@@colors@@@@@@@@@@@@@@" + intcolor);

			if (intcolor ==1) {
				g_name+="??????:?????????/";
			} else if (intcolor ==2) {
				g_name+="??????:?????????/";
			} else if (intcolor ==3) {
				g_name+="??????:?????????/";
			} else if (intcolor ==4) {
				g_name+="??????:??????/";
			} else if (intcolor ==5) {
				g_name+="??????:??????/";
			} else if (intcolor ==6) {
				g_name+="??????:??????/";
			} else if (intcolor ==7) {
				g_name+="??????:??????/";
			} else if (intcolor ==8) {
				g_name+="??????:??????/";
			} else if (intcolor ==9) {
				g_name+="??????:?????????/";
			} else if (intcolor ==10) {
				g_name+="??????:?????????/";
			} else if (intcolor ==11) {
				g_name+="??????:??????/";
			} else {
				g_name+="??????:FREE/";
			}

    	}
    
    	System.out.println("kakaoPayReady : " + bs_num +" ????????? ???????????? Stotalprice: "+ Stotalprice);
    	
    	s_bs_num = Integer.toString(bs_num);
    	System.out.println("s_bs_num : "+ s_bs_num);
    	
    	String s_totalol_ea = Integer.toString(totalol_ea);
    	//String id="qwer";
    	RestTemplate restTemplate = new RestTemplate();
 
        // ????????? ????????? Header
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "KakaoAK " + "5c3aafe5e7652a7bb121683dd5a57fd5");
        headers.add("Accept", MediaType.APPLICATION_JSON_VALUE);
        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
        
        // ????????? ????????? Body
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        params.add("cid", "TC0ONETIME");
        params.add("partner_order_id", s_bs_num );
        params.add("partner_user_id", id);
        params.add("item_name", g_name );
        params.add("quantity", s_totalol_ea);
        params.add("total_amount",Stotalprice);
        params.add("tax_free_amount", "100");
        params.add("approval_url", "http://localhost:8090/finalproject/shop/kakaoPaybasketSuccess?bs_num="+bs_num);
        params.add("cancel_url", "http://localhost:8090/shop/kakaoPayCancel");
        params.add("fail_url", "http://localhost:8090/shop/kakaoPaySuccessFail");
 
         HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
 
        try {
            kakaoPayReadyVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, KakaoPayReadyVO.class);
            
            log.info("" + kakaoPayReadyVO);
            System.out.println("0.5");
            return kakaoPayReadyVO.getNext_redirect_pc_url();
            
    
        } catch (RestClientException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return "/pay";
        
    }
    
    public KakaoPayApprovalVO kakaoPayInfo(String pg_token, int bs_num ) {
    	 
        log.info("KakaoPayInfoVO............................................");
        log.info("-----------------------------");
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String id = auth.getName();
        
        RestTemplate restTemplate = new RestTemplate();
         	System.out.println("info_opencoupon"+opencoupon);
    	//String id="qwer";
    	
        // ????????? ????????? Header
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "KakaoAK " + "5c3aafe5e7652a7bb121683dd5a57fd5");
        headers.add("Accept", MediaType.APPLICATION_JSON_VALUE);
        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
        System.out.println("asdasdasdd???????????????");
        // ????????? ????????? Body
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        params.add("cid", "TC0ONETIME");
        params.add("tid", kakaoPayReadyVO.getTid());
        params.add("partner_order_id", s_bs_num);
        params.add("partner_user_id", id);
        params.add("pg_token", pg_token);
        params.add("total_amount", Stotalprice);
        System.out.println("asdasdasdd???????????????2222");
        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
        System.out.println("asdasdasdd???????????????3333");
        try {
        	System.out.println("asdasdasdd???????????????4444");
        	
        	
        	kakaoPayApprovalVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body, KakaoPayApprovalVO.class);
        	kakaoPayApprovalVO.setCoupon(opencoupon);
        	kakaoPayApprovalVO.setSnumberckeck(snumberckeck);
        	log.info("kakaoPayApprovalVO : " + kakaoPayApprovalVO);
          System.out.println("1???");
            return kakaoPayApprovalVO;
        
        } catch (RestClientException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return null;
    }
    
}
