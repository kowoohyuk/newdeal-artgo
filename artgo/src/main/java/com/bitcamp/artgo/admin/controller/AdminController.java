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

  @RequestMapping(value = "/admin/mainPage.do", method = RequestMethod.GET)
  public String adminMainPage() {
    /**
    * @함수명 : adminMainPage()
    * @작성일 : 2019. 1. 11.
    * @작성자 : 고 우 혁
    * @설명 : 관리자 메인 페이지로 이동
    * @param : 없음
    * @return : 페이지
    **/
    return "admin/main.page";
  }
  
  @RequestMapping(value = "/admin/reviewListPage.do", method = RequestMethod.GET)
  public String adminReviewListPage() {
    /**
    * @함수명 : adminReviewListPage()
    * @작성일 : 2019. 1. 11.
    * @작성자 : 고 우 혁
    * @설명 : 후기 리스트 페이지로 이동
    * @param : 없음
    * @return : 페이지
    **/
    return "admin/reviewList.page";
  }
  
  @RequestMapping(value = "/admin/memberListPage.do", method = RequestMethod.GET)
  public String adminMemberListPage() {
    /**
    * @함수명 : adminMemberListPage()
    * @작성일 : 2019. 1. 11.
    * @작성자 : 고 우 혁
    * @설명 : 회원 리스트 페이지로 이동
    * @param : 없음
    * @return : 페이지
    **/
    return "admin/memberList.page";
  }

  @RequestMapping(value = "/admin/questionListPage.do", method = RequestMethod.GET)
  public String adminQuestionListPage() {
    /**
    * @함수명 : adminQuestionListPage()
    * @작성일 : 2019. 1. 11.
    * @작성자 : 고 우 혁
    * @설명 : 문의 리스트 페이지로 이동
    * @param : 없음
    * @return : 페이지
    **/
    return "admin/questionList.page";
  }

  @RequestMapping(value = "/admin/chartPage.do", method = RequestMethod.GET)
  public String adminChartPage() {
    /**
    * @함수명 : adminChartPage()
    * @작성일 : 2019. 1. 11.
    * @작성자 : 고 우 혁
    * @설명 : 차트 페이지로 이동
    * @param : 없음
    * @return : 페이지
    **/
    return "admin/chart.page";
  }
}
