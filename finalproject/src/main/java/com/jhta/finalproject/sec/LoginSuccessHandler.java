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
			//��������ť��Ƽ�� ��û�� ����ë���� ��û�� ���� ������ ���� ĳ�ð�ü ������
			RequestCache requestCache = new HttpSessionRequestCache();
			//����� ����� ��û������ ���� ��ü ������
			SavedRequest savedRequest = requestCache.getRequest(request, response);
			//����ڰ� ������ ��û�� url��������
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
