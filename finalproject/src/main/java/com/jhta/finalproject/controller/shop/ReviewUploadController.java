package com.jhta.finalproject.controller.shop;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.ctc.wstx.io.SystemId;
import com.jhta.finalproject.service.ReviewBoardService;
import com.jhta.finalproject.vo.ReviewBoardVo;
import com.jhta.finalproject.vo.ReviewForm;
import com.jhta.finalproject.vo.ReviewListBoardVo;




@RestController
public class ReviewUploadController {
	@Autowired ServletContext sc;
	@Autowired ReviewBoardService reviewBoardService;
	@RequestMapping(value = "/shop/reviewUpload",produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> FormUpload(@RequestParam HashMap<Object, Object> param, MultipartHttpServletRequest file){
	 	HashMap<String, Object> map = new HashMap<String, Object>();
	 	String path = sc.getRealPath("/resources/img/goods");

	 	System.out.println(param);
	 	String rb_title = (String) param.get("title");
	 	String rb_content = (String) param.get("content");
		String m_id = (String) param.get("m_id");
		int rb_stars = Integer.parseInt((String) param.get("star_cnt"));
		int p_num = Integer.parseInt((String)param.get("p_num"));
	 	int ol_num = Integer.parseInt((String)param.get("ol_num"));
	 	//System.out.println(p_num);
	 	System.out.println(rb_title);
	 	System.out.println(rb_content);
	 	System.out.println(rb_stars);
	 	System.out.println(p_num);
	 	System.out.println(ol_num);
	 	Iterator<String> iter = file.getFileNames(); 
	    MultipartFile mfile = null; 
	    String fieldName = "";
	    String rb_orgimg = null;
	    String rb_saveimg =null;
	    while (iter.hasNext()) { 
	    	fieldName = (String) iter.next();
	    	mfile = file.getFile(fieldName);  //저장된 파일 객체
	    	System.out.println(mfile);
	     rb_orgimg = mfile.getOriginalFilename(); 
	     rb_saveimg =  UUID.randomUUID()+"_"+rb_orgimg;
	   
	    }
	    try {
	    	 InputStream is = mfile.getInputStream();
			   FileOutputStream fos = new FileOutputStream(path+"\\"+rb_saveimg);
			 
			     FileCopyUtils.copy(is,fos);
			//	File f = new File(path+"\\"+rb_saveimg);
			  //  System.out.println(f+"파일위치");
			   is.close();
				fos.close();
				//2.업로드된 파일정보 db 저장하기
			//	long filesize = mfile.getSize();
	
				ReviewBoardVo vo = new ReviewBoardVo(0, rb_title, rb_content, null, rb_stars, rb_orgimg, rb_saveimg, ol_num, p_num, m_id);
				System.out.println(rb_orgimg+"원본");
				System.out.println(rb_saveimg+"사본");
				System.out.println(vo+"값들");
	   
	     int n = reviewBoardService.insert(vo);
	    
	    
	 if(n>0) {
		 map.put("result", "success");
	 }else{
		 map.put("result", "fail"); 
	 }
	 
	    }catch (Exception e) {
	    	e.printStackTrace();
		}
	    return map;    
 }
	
	@RequestMapping(value = "/shop/reviewList",produces = {MediaType.APPLICATION_JSON_VALUE})
	public HashMap<String, Object> ReviewlistBoard(int g_num) {
				HashMap<String, Object> map = new HashMap<String, Object>();
				HashMap<String, Object> m = new HashMap<String, Object>();
				System.out.println(g_num+"리뷰 지넘버넘어옴");
				m.put("g_num",g_num);
				List<ReviewListBoardVo> selectReviewList =   reviewBoardService.selectReviewList(m);
				 int n = selectReviewList.size();
				 System.out.println(n);
				 System.out.println(selectReviewList);
				 
				 
				 
				 
				 
				 if(n>0) {
					map.put("list", selectReviewList);
					map.put("result", "success");
				}else {
					map.put("result", "fail"); 
				}
				return map;
				
			}
	
}
