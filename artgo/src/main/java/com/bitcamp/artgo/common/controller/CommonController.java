package com.bitcamp.artgo.common.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.bitcamp.artgo.board.model.ExhibitionDto;
import com.bitcamp.artgo.board.model.FileDto;
import com.bitcamp.artgo.board.service.ExhibitionService;
import com.bitcamp.artgo.util.PageNavigation;

/**
* 파일명: CommonController.java
* 설 명: 기본적인 매핑을 처리하는 컨트롤러
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

@Controller
public class CommonController {

  @Autowired
  ExhibitionService exhibitionService;
  
  @RequestMapping(value = "/", method = RequestMethod.GET)
  public String startPage() {
    return "redirect:/main.do";
  }

  @RequestMapping(value = "/main.do", method = RequestMethod.GET)
  public ModelAndView mainPage(Model model) {
    ModelAndView modelAndView = new ModelAndView();
    List<ExhibitionDto> list = exhibitionService.getNewExhibit();
    List<FileDto> bannerList = exhibitionService.getBannerList();
    modelAndView.addObject("newlist", list);
    modelAndView.addObject("bannerlist", bannerList);
    modelAndView.setViewName("common/main.page");
    return modelAndView;
  }

}
