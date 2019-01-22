package com.bitcamp.artgo.admin.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.bitcamp.artgo.admin.model.ChartDataDto;
import com.bitcamp.artgo.admin.service.AdminService;
import com.bitcamp.artgo.board.model.ExhibitionDto;
import com.bitcamp.artgo.common.service.CommonService;
import com.bitcamp.artgo.member.model.MemberDto;
import com.bitcamp.artgo.member.service.MemberService;
import com.bitcamp.artgo.util.PageNavigation;

/**
* 파일명: AdminController.java
* 설 명: 메인 페이지, 관리자 페이지, 관리자 기능
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

@Controller
@RequestMapping("/admin")
public class AdminController {
  
  @Autowired
  MemberService memberService;
  
  @Autowired
  CommonService commonService;
  
  @Autowired
  AdminService adminService;

  @RequestMapping(value = "/main.do", method = RequestMethod.GET)
  public String adminMain() {
    return "admin/main.ad";
  }

  @RequestMapping(value = "/chart/list.do", method = RequestMethod.GET)
  public @ResponseBody String chartList() {
    return adminService.getChartList();

  }
  
  @RequestMapping(value = "/member/list.do", method = RequestMethod.GET)
  public ModelAndView adminMemberList(@RequestParam Map<String, String> param, Model model) {
      ModelAndView modelAndView = new ModelAndView();
      List<MemberDto> list = memberService.selectMemberList(param);
      
      param.put("page-type", "member"); // 페이지 네비게이션을 여러 곳에서 쓰기 위함.
      PageNavigation navigation = commonService.makePageNavigation(param);
      navigation.setRoot("/admin");
      navigation.makeNavigator();
      modelAndView.addObject("articlelist", list);
      modelAndView.addObject("navigator", navigation);
      modelAndView.setViewName("admin/member-list.ad");
      return modelAndView;
  }
  
  @RequestMapping(value = "/reviewList.do", method = RequestMethod.GET)
  public String adminReviewList() {
    return "admin/reviewList.page";
  }

  @RequestMapping(value = "/questionList.do", method = RequestMethod.GET)
  public String adminQuestionList() {
    return "admin/questionList.page";
  }

  @RequestMapping(value = "/chart.do", method = RequestMethod.GET)
  public String adminChart() {
    return "admin/chart.page";
  }

  @RequestMapping(value = "/exhibit/write.do", method = RequestMethod.GET)
  public String exhibitWrite() {
    return "exhibit/write.page";
  }

  @RequestMapping(value = "/exhibit/write.do", method = RequestMethod.POST)
  public String exhibitWrite(ExhibitionDto exhibitionDto, HttpSession session,
      @RequestParam("picture") MultipartFile multipartFile, Model model) {
    MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
    
    exhibitionDto.setMno(memberDto.getMno());
    adminService.writeExhibit(exhibitionDto, multipartFile);
    return "redirect:/main.do";
  }
}
