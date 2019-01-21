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
    return "redirect:/main.do";
  }

  @RequestMapping(value = "/main.do", method = RequestMethod.GET)
  public String mainPage() {
    return "common/main.page";
  }

}
