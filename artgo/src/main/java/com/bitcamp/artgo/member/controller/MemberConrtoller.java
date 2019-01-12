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
	
	  @RequestMapping("member/login.do")
	  public String memberLogin() {
	    return "member/login.part";
	  }
	  
      @RequestMapping("member/main.do")
      public String memberMain() {
        return "member/main.page";
      }

	  @RequestMapping("member/join.do")
	  public String memberJoin() {
	    return "member/join.part";
	  }
	  
	  @RequestMapping("member/findId.do")
	  public String memberFindId() {
	    return "member/findId.part";
	  }

	  @RequestMapping("member/findPwd.do")
	  public String memberFindPwdPart() {
	    return "member/findPwd.part";
	  }
//	  @RequestMapping("member/ticket/list")
//  	  public String ticketList() {
//	    /**
//	    * @함수명 : cardInsert(CardDTO card)
//	    * @작성일 : 2019. 1. 11.
//	    * @작성자 : 고 우 혁
//        * @설명 : 미정
//        * @param  : 미정
//        * @return : 페이지
//	    **/
//  	    return "ticket/list";
//  	  }
//	  @RequestMapping("member/ticket/list")
//	  public String ticket() {
//	    /**
//        * @설명 : 미정
//        * @param  : 미정
//        * @return : 페이지
//        **/
//	    return "ticket/list";
//	  }

}
