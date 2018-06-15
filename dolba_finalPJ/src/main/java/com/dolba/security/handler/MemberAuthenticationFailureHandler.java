package com.dolba.security.handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;


/**
 * springSecurity설정문서에서 authentication-failure-handler-ref=""를 작성해놓으면
 * 인증(로그인) 될때 실패하게 되면 MemberAuthenticationFailureHandler 클래스의
 * onAuthenticationFailure()메소드가 자동 호출된다.
 * */
@Component //id= memberAuthenticationFailureHandler
public class MemberAuthenticationFailureHandler implements AuthenticationFailureHandler{
	
	public MemberAuthenticationFailureHandler() {}
	
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException ex) throws IOException, ServletException{
		
		request.setAttribute("errorMessage", ex.getMessage());
		request.getRequestDispatcher("/WEB-INF/views/member/loginForm.jsp").forward(request, response);
	}
	
}
