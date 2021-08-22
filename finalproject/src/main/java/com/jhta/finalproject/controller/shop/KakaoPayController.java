package com.jhta.finalproject.controller.shop;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jhta.finalproject.service.KakaoPay;

import lombok.extern.java.Log;

@Controller
@Log
public class KakaoPayController {

	@Autowired
	KakaoPay kakaopay;

//	@GetMapping("/shop/kakaopay")
//	@ResponseBody
//	public String kakaopay() {
//		try {
//			// 보내는 부분
//			URL address = new URL("https://kapi.kakao.com/v1/payment/ready");
//			HttpURLConnection connection = (HttpURLConnection) address.openConnection(); // 서버연결
//			connection.setRequestMethod("POST");
//			connection.setRequestProperty("Authorization", "KakaoAK 5c3aafe5e7652a7bb121683dd5a57fd5"); // 어드민 키
//			connection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
//			connection.setDoOutput(true); // 서버한테 전달할게 있는지 없는지
//			String parameter = "cid=TC0ONETIME" // 가맹점 코드
//					+ "&partner_order_id=1001" // 가맹점 주문번호
//					+ "&partner_user_id=gorany" // 가맹점 회원 id
//					+ "&item_name=초코파이" // 상품명
//					+ "&quantity=1" // 상품 수량
//					+ "&total_amount=5000" // 총 금액
//					+ "&vat_amount=200" // 부가세
//					+ "&tax_free_amount=0" // 상품 비과세 금액
//					+ "&approval_url=http://localhost:8090/finalproject/shop/kakaoPaySuccess" // 결제 성공 시
//					+ "&fail_url=http://localhost:8090/" // 결제 실패 시
//					+ "&cancel_url=http://localhost:8090/"; // 결제 취소 시
//			OutputStream send = connection.getOutputStream(); // 이제 뭔가를 를 줄 수 있다.
//			DataOutputStream dataSend = new DataOutputStream(send); // 이제 데이터를 줄 수 있다.
//			dataSend.writeBytes(parameter); // OutputStream은 데이터를 바이트 형식으로 주고 받기로 약속되어 있다. (형변환)
//			dataSend.close(); // flush가 자동으로 호출이 되고 닫는다. (보내고 비우고 닫다)
//
//			int result = connection.getResponseCode(); // 전송 잘 됐나 안됐나 번호를 받는다.
//			InputStream receive; // 받다
//
//			if (result == 200) {
//				receive = connection.getInputStream();
//			} else {
//				receive = connection.getErrorStream();
//			}
//			// 읽는 부분
//			InputStreamReader read = new InputStreamReader(receive); // 받은걸 읽는다.
//			BufferedReader change = new BufferedReader(read); // 바이트를 읽기 위해 형변환 버퍼리더는 실제로 형변환을 위해 존제하는 클레스는 아니다.
//			// 받는 부분
//			return change.readLine(); // 문자열로 형변환을 알아서 해주고 찍어낸다 그리고 본인은 비워진다.
//
//		} catch (MalformedURLException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		return "";
//
//	}

	
	  @PostMapping("/shop/kakaopay") public String kakaoPay() {
	  log.info("kakaoPay post............................................");
	 
	  return "redirect:" + kakaopay.kakaoPayReady();
	  
	  }
	

	
	  @GetMapping("/shop/kakaoPaySuccess") 
	  public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
	  log.info("kakaoPaySuccess get............................................");
	  log.info("kakaoPaySuccess pg_token : " + pg_token);
	  model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token)); }
	 
}
