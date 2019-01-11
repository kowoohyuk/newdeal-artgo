package com.bitcamp.artgo.board.controller;

import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
* 파일명: NoticeController.java
* 설 명: 공지사항 관련 요청을 처리하기 위한 컨트롤러
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

@Controller
public class NoticeController {

  @RequestMapping(value = "/notice/ListPage.do", method = RequestMethod.GET)
  public ModelAndView noticeListPage(@RequestParam Map<String, String> param, Model model) {
    /**
    * @함수명 : noticeListPage(Map<String, String> param, Model model)
    * @작성일 : 2019. 1. 11.
    * @작성자 : 고 우 혁
    * @설명 : 공지사항 글 목록 페이지로 이동, 페이징 처리 후 보내기 위해 ModelAndView 사용
    * @param : Map<String, String> param, Model model
    * @return : ModelAndView
    **/
    ModelAndView modelAndView = new ModelAndView();

    //리스트 생성 후 생각.
//    List<NoticeDto> list = reboardService.listArticle(param);
//    PageNavigation navigation = commonService.makePageNavigation(param);
//    navigation.setRoot("/board");
//    navigation.makeNavigator();
//
//    modelAndView.addObject("articlelist", list);
//    modelAndView.addObject("navigator", navigation);
//    modelAndView.setViewName("notice/list.page");
//    
    return modelAndView;
  }
 
  @RequestMapping(value = "/notice/writePage.do", method = RequestMethod.GET)
  public String noticeWritePage() {
    /**
    * @함수명 : noticeWritePage()
    * @작성일 : 2019. 1. 11.
    * @작성자 : 고 우 혁
    * @설명 : 공지사항 글 쓰기 페이지로 이동
    * @param : 없음
    * @return : 페이지
    **/
    return "notice/write.page";
  }

  @RequestMapping(value = "/notice/viewPage.do", method = RequestMethod.GET)
  public String noticeViewPage(@RequestParam int nno, HttpSession session, Model model) {
    /**
    * @함수명 : noticeViewPage()
    * @작성일 : 2019. 1. 11.
    * @작성자 : 고 우 혁
    * @설명 : 공지사항 글 페이지로 이동
    * @param : int nno, HttpSession session, Model model
    * @return : 페이지
    **/
    return "notice/view.page";
  }
  
  @RequestMapping(value = "/notice/modifyPage.do", method = RequestMethod.GET)
  public String noticeModifyPage(@RequestParam int nno, HttpSession session, Model model) {
    /**
    * @함수명 : noticeModifyPage()
    * @작성일 : 2019. 1. 11.
    * @작성자 : 고 우 혁
    * @설명 : 공지사항 수정 페이지로 이동
    * @param : 없음
    * @return : 페이지
    **/
    return "notice/modify.page";
  }

}
