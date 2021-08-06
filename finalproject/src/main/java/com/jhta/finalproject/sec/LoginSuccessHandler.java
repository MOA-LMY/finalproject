package com.jhta.finalproject.sec;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;

public class LoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler{
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		List<String> roleName= new ArrayList<String>();
		for(GrantedAuthority auth : authentication.getAuthorities()) {
			roleName.add(auth.getAuthority());
		}
		if(roleName.contains("ROLE_ADMIN")) {
			response.sendRedirect(request.getContextPath()+"/admin");
		}else if(roleName.contains("ROLE_MEMBER")) {
			//스프링시큐리티가 요청을 가로챘을시 요청에 대한 정보를 갖는 캐시객체 얻어오기
			RequestCache requestCache = new HttpSessionRequestCache();
			//저장된 사용자 요청정보를 갖는 객체 얻어오기
			SavedRequest savedRequest = requestCache.getRequest(request, response);
			//사용자가 이전에 요청한 url가져오기
			try {
				String url=savedRequest.getRedirectUrl();	
				System.out.println(url);
				response.sendRedirect(url);
			}catch(Exception e) {
				
				response.sendRedirect(request.getContextPath()+"/");
			}

		}else if(roleName.contains("ROLE_PARTNERS")) {
			response.sendRedirect(request.getContextPath()+"/login/join");
		}
		else {
			response.sendRedirect(request.getContextPath()+"/");
		}
	}
}
