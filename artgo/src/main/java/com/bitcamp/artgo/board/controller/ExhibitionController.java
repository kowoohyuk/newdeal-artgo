package com.bitcamp.artgo.board.controller;

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
import com.bitcamp.artgo.admin.service.AdminService;
import com.bitcamp.artgo.board.model.ExhibitionDto;
import com.bitcamp.artgo.board.service.ExhibitionService;
import com.bitcamp.artgo.common.service.CommonService;
import com.bitcamp.artgo.member.model.MemberDto;
import com.bitcamp.artgo.util.PageNavigation;

/**
* 파일명: ExhibitionController.java
* 설 명: 설명내용
* 작성일: 2019. 1. 13.
* 작성자: 한 범 석
*/
@Controller
public class ExhibitionController {

  @Autowired
  ExhibitionService exhibitionService; 
  
  @Autowired
  AdminService adminService; 
  
  @Autowired
  CommonService commonService;
  
  @RequestMapping(value = "exhibit/list.do", method = RequestMethod.GET)
  public ModelAndView exhibitList(@RequestParam Map<String, String> param, Model model) {
    ModelAndView modelAndView = new ModelAndView();
    List<ExhibitionDto> list = exhibitionService.getExhibitList(param);
    param.put("page-type", "exhibit"); // 페이지 네비게이션을 여러 곳에서 쓰기 위함.
    PageNavigation navigation = commonService.makePageNavigation(param);
    navigation.setRoot("/exhibit");
    navigation.makeNavigator(param);
    modelAndView.addObject("articlelist", list);
    modelAndView.addObject("navigator", navigation);
    modelAndView.setViewName("exhibit/list.page");
    return modelAndView;
  }

  @RequestMapping(value = "exhibit/view.do", method = RequestMethod.GET)
  public String exhibitView(String bno, Model model) {
    model.addAttribute("exhibit",exhibitionService.getExhibit(bno));
    return "exhibit/view.page";
  }

  
  @RequestMapping(value = "exhibit/Imlist.do", method = RequestMethod.GET, produces="application/json;charset=UTF-8")
  public @ResponseBody String exhibitModify() {
    return exhibitionService.getImminentExhibit();
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
