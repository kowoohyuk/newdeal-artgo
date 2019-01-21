package com.bitcamp.artgo.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import com.bitcamp.artgo.member.model.MemberDto;

public class RoleInterceptor extends HandlerInterceptorAdapter {

  @Override
  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
      throws Exception {
    HttpSession session = request.getSession();
    MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
    if(memberDto==null) {
      response.sendRedirect("/main.do");
      return false;
    }else {
      if(memberDto.getRole().equals("ROLE_ADMIN")) {
        return true;
      }else {
        response.sendRedirect("/main.do");
        return false;
      }
    }
  }
  
}
