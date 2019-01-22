package com.bitcamp.artgo.member.controller;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import com.bitcamp.artgo.member.model.MemberDto;
import com.bitcamp.artgo.member.service.FavoriteService;

/**
* 파일명: FavoriteController.java
* 설 명: 설명내용
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

@RestController
@RequestMapping(value="member/", produces="application/json;charset=UTF-8")
public class FavoriteController {
   
  @Autowired
  FavoriteService favoriteService;
  
  @RequestMapping(value="favor.do", method = RequestMethod.POST)
  public @ResponseBody String addFavorite(@RequestBody Map<String, String> param, HttpSession session) {
    MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
    if(memberDto==null) {
      return "";
    }else {
      param.put("mno", memberDto.getMno()+"");
      return favoriteService.addFavorite(param);
    }
    
  }
  
  @RequestMapping(value="favor.do/{exno}", method = RequestMethod.DELETE)
  public @ResponseBody String removeFavorite(@PathVariable(value="exno") String exno, HttpSession session) {
    Map<String, String> param = new HashMap<String, String>();
    System.out.println(exno);
    MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
    if(memberDto != null) {
      param.put("exno", exno);
      param.put("mno", memberDto.getMno()+"");
      return favoriteService.removeFavorite(param);
    }
    return "";
  }
  
  @RequestMapping(value="favor.do", method = RequestMethod.GET)
  public @ResponseBody String getFavoriteList(HttpSession session) {
    MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
    if(memberDto != null) {
      return favoriteService.getFavoriteList(memberDto.getMno());
    }
    return "";
  }
  
  @RequestMapping(value="review/check.do/{exno}", method = RequestMethod.GET)
  public @ResponseBody String checkFavorite(@PathVariable(value="exno") int exno, HttpSession session) {
    Map<String, String> param = new HashMap<String, String>();
    MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
    if(memberDto != null) {
      param.put("exno", exno+"");
      param.put("mno", memberDto.getMno()+"");
      return favoriteService.checkFavorite(param);
    }
    return "";
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