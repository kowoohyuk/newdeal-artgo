package com.bitcamp.artgo.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	    int i = 0;
	    if(i==0) {
	      //임시
	      return true;
	    }
	  
		HttpSession session = request.getSession();
		String url = request.getRequestURI();
		System.out.println(url);
		if (session.getAttribute("userInfo") == null) {
			System.out.println(request.getContextPath());
			return false;
		} else {
			return true;
		}
	}

}
