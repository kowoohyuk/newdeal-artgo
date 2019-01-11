package com.bitcamp.artgo.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
* 파일명: CommonController.java
* 설 명: 기본적인 매핑을 처리하는 컨트롤러
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

@Controller
public class CommonController {

  @RequestMapping(value = "/", method = RequestMethod.GET)
  public String startPage() {
    /**
    * @함수명 : startPage()
    * @작성일 : 2019. 1. 11.
    * @작성자 : 고 우 혁
    * @설명 : 최초 페이지 이동 (메인 페이지)
    * @param : 없음
    * @return : 페이지
    **/
    return "common/main.page";
  }

  @RequestMapping(value = "/mainPage.do", method = RequestMethod.GET)
  public String mainPage() {
    /**
    * @함수명 : mainPage()
    * @작성일 : 2019. 1. 11.
    * @작성자 : 고 우 혁
    * @설명 : 메인 페이지로 이동
    * @param : 없음
    * @return : 페이지
    **/
    return "common/main.page";
  }

}
