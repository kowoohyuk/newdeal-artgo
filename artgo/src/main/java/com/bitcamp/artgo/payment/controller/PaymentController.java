package com.bitcamp.artgo.payment.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.bitcamp.artgo.member.model.MemberDto;
import com.bitcamp.artgo.payment.model.PaymentDto;
import com.bitcamp.artgo.payment.service.PaymentService;

/**
* 파일명: PaymentController.java
* 설 명: 설명내용
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

@Controller
public class PaymentController {
  
  @Autowired
  PaymentService paymentService;
  
  @RequestMapping(value = "exhibit/payment.do", method = RequestMethod.POST)
  public @ResponseBody String exhibitPayment(@RequestBody PaymentDto paymentDto, HttpSession session) {
    MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
    paymentDto.setMno(memberDto.getMno());
    paymentService.writePayment(paymentDto);

    return "exhibit/modify.page";
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