package com.bitcamp.artgo.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
* 파일명: ExhibitionController.java
* 설 명: 설명내용
* 작성일: 2019. 1. 13.
* 작성자: 한 범 석
*/
@Controller
public class ExhibitionController {

  @RequestMapping(value = "/ticketList.do", method = RequestMethod.GET)
  public String ticketList() {
    
    return "ticket/list.page";
  }

  @RequestMapping(value = "/ticketView.do", method = RequestMethod.GET)
  public String ticketView() {
    
    return "ticket/view.page";
  }
}

/**
* @함수명 : cardInsert(CardDTO card)
* @작성일 : 2019. 1. 11.
* @작성자 : 고 우 혁
* @설명 : 카드를 생성한다.
* @param CardDTO - projectNum, cardName
* @return int 성공한 갯수
**/