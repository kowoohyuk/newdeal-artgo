package com.bitcamp.artgo.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
* 파일명: AdminController.java
* 설 명: 메인 페이지, 관리자 페이지, 관리자 기능
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

@Controller
public class AdminController {

  @RequestMapping(value = "/admin/main.do", method = RequestMethod.GET)
  public String adminMain() {
    return "admin/main.ad";
  }
  
  @RequestMapping(value = "/admin/reviewList.do", method = RequestMethod.GET)
  public String adminReviewList() {
    return "admin/reviewList.page";
  }
  
  @RequestMapping(value = "/admin/memberList.do", method = RequestMethod.GET)
  public String adminMemberList() {
    return "admin/memberList.page";
  }

  @RequestMapping(value = "/admin/questionList.do", method = RequestMethod.GET)
  public String adminQuestionList() {
    return "admin/questionList.page";
  }

  @RequestMapping(value = "/admin/chart.do", method = RequestMethod.GET)
  public String adminChart() {
    return "admin/chart.page";
  }
}
