package com.bitcamp.artgo.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
* 파일명: MemberConrtoller.java
* 설 명: 회원 관련 페이지, 기능
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

@Controller
public class MemberConrtoller {
	
	  @RequestMapping("member/loginPart.do")
	  public String login() {
	    return "member/login.part";
	  }

	  @RequestMapping("member/joinPart.do")
	  public String join() {
	    return "member/join.part";
	  }
	  
	  @RequestMapping("member/findIdPart.do")
	  public String findId() {
	    return "member/findId.part";
	  }

	  @RequestMapping("member/findPwdPart.do")
	  public String findPwd() {
	    return "member/findPwd.part";
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