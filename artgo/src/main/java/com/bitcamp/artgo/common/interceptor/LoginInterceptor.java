package com.bitcamp.artgo.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import com.bitcamp.artgo.member.model.MemberDto;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	   HttpSession session = request.getSession();
	    MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
	    if(memberDto==null) {
	      response.sendRedirect("/member/login.do");
	      return false;
	    }else {
	      return true;
	    }
//		String url = request.getRequestURI();
//		System.out.println(request.getRequestURL().toString());
//		System.out.println(url);
	}

}
