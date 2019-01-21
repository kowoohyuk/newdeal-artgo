package com.bitcamp.artgo.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.bitcamp.artgo.common.service.CommonService;
import com.bitcamp.artgo.mail.service.AuthService;
import com.bitcamp.artgo.member.model.MemberDto;
import com.bitcamp.artgo.member.service.MemberService;
import com.bitcamp.artgo.payment.model.PaymentDto;
import com.bitcamp.artgo.payment.service.PaymentService;
import com.bitcamp.artgo.util.PageNavigation;

/**
 * 파일명: MemberConrtoller.java
 * 설 명: 회원 관련 페이지 기능
 * 작성일: 2019. 1. 11.
 * 작성자: 고 우 혁
 */

@Controller
public class MemberController {

  @Autowired
  MemberService memberService;

  @Autowired
  AuthService authService;
  
  @Autowired
  PaymentService paymentService;
  
  @Autowired
  CommonService commonService;

  @RequestMapping(value = "member/login.do", method = RequestMethod.GET)
  public String memberLogin(Model model) {
    return "member/login.part";
  }

  @RequestMapping("member/main.do")
  public String memberMain(HttpSession session, Model model) {
    /**
     * @함수명 : memberMain(MemberDto memberDto, HttpSession session, Model model)
     * @작성일 : 2019. 1. 11.
     * @작성자 : 정 도 윤
     * @설명 : 마이 페이지 이동.
     * @param : MemberDto, HttpSession, Model
     * @return : 1) 로그인 성공 시 메인 화면 이동 2) 실패 시 현재 페이지 내 경고창 출력
     **/
    return "member/main.page";
  }

  @RequestMapping(value = "member/join.do", method = RequestMethod.GET)
  public String memberJoin() {
    return "member/join.part";
  }

  @RequestMapping(value = "member/logout.do", method = RequestMethod.GET)
  public String memberLogout(HttpSession session) {
    session.invalidate();
    return "redirect:/main.do";
  }

  @RequestMapping(value = "member/findId.do", method = RequestMethod.GET)
  public String memberFindId() {
    return "member/findId.part";
  }

  @RequestMapping(value = "member/findId.do", method = RequestMethod.POST)
  public @ResponseBody String memberFindId(@RequestParam Map<String, String> param, Model model) {
    return memberService.findId(param);
  }

  @RequestMapping(value = "member/findPwd.do", method = RequestMethod.GET)
  public String memberFindPwd() {
    return "member/findPwd.part";
  }

  @RequestMapping(value = "member/findPwd.do", method = RequestMethod.POST)
  public @ResponseBody String memberFindPwd(@RequestParam Map<String, String> param, Model model) {
    return authService.createTmpPwd(param.get("id"));
  }

  @RequestMapping(value = "member/modify.do", method = RequestMethod.GET)
  public String memberModify() {
    return "member/modify.page";
  }
  
  @RequestMapping(value = "/member/pay/list.do", method = RequestMethod.GET)
  public ModelAndView memberPayment(@RequestParam Map<String, String> param, Model model) {
      ModelAndView modelAndView = new ModelAndView();
      List<PaymentDto> list = paymentService.getPaymentList(param);
      System.out.println(list.size());
      param.put("page-type", "payment"); // 페이지 네비게이션을 여러 곳에서 쓰기 위함.
      PageNavigation navigation = commonService.makePageNavigation(param);
      navigation.setRoot("/member");
      navigation.makeNavigator();
      modelAndView.addObject("articlelist", list);
      modelAndView.addObject("navigator", navigation);
      modelAndView.setViewName("member/payment.page");
      return modelAndView;
  }
  

  @RequestMapping(value = "member/login.do", method = RequestMethod.POST)
  public String memberLogin(MemberDto memberDto, HttpSession session, Model model,
      RedirectAttributes redirectAttributes) {
    /**
     * @함수명 : memberLogin(MemberDto memberDto, HttpSession session, Model model)
     * @작성일 : 2019. 1. 11.
     * @작성자 : 정 도 윤
     * @설명 : 로그인을 위한 메서드, 로그인 시 세션에 로그인 정보 입력.
     * @param : MemberDto, HttpSession, Model
     * @return : 1) 로그인 성공 시 메인 화면 이동 2) 실패 시 현재 페이지 내 경고창 출력
     **/

    MemberDto user = memberService.checkMember(memberDto);
    if (user != null) {
      if (user.getConfirm() == 0) {
        model.addAttribute("type", "4");
        model.addAttribute("id", memberDto.getId());
        return "common/result.part";
      }
      session.setAttribute("userInfo", user);
      return "common/main.page";
    } else {
      redirectAttributes.addAttribute("err", "1");
      return "redirect:login.do";
    }
  }

  @RequestMapping(value = "member/kakaoLogin.do", method = RequestMethod.POST,
      headers = {"Content-type=application/json"})
  public @ResponseBody String memberJoin(@RequestBody Map<String, String> param,
      HttpSession session) {
    String id = "kakao" + param.get("id");
    String pwd = param.get("id");
    JSONObject result = new JSONObject();
    MemberDto memberDto = new MemberDto();

    MemberDto tmp = memberService.selectMember(id);
    if (tmp != null) {
      session.setAttribute("userInfo", tmp);
      result.put("result", "success");
    } else {
      memberDto.setId(id);
      memberDto.setName(param.get("nickname"));
      memberDto.setPwd(param.get("id"));
      memberDto.setType("kakao");
      memberDto.setConfirm(1);
      memberDto.setRole("ROLE_USER");
      memberDto.setConfirm(1);
      if (memberService.addMember(memberDto) > 0) {
        session.setAttribute("userInfo", memberDto);
        result.put("result", "success");
      } else {
        result.put("result", "fail");
      }
    }
    return result.toString();
  }

  @RequestMapping(value = "member/checkId.do", method = RequestMethod.POST)
  public @ResponseBody Map<String, String> checkId(@RequestParam String id) {
    Map<String, String> map = new HashMap<String, String>();
    if (memberService.selectMember(id) != null) {
      map.put("result", "1");
    } else {
      map.put("result", "0");
    }
    return map;
  }

  @RequestMapping(value = "member/join.do", method = RequestMethod.POST)
  public String memberJoin(MemberDto memberDto, Model model) {
    // 트랜잭셔널 확인
    memberDto.setType("normal");
    memberDto.setConfirm(0);
    memberService.addMember(memberDto);

    if (authService.create(memberDto.getId()) > 0) {
      model.addAttribute("type", "1");
    } else {
      model.addAttribute("type", "2");
    }
    return "common/result.part";
  }

  @RequestMapping(value = "member/resend", method = RequestMethod.GET)
  public String resend(String id, Model model) {
    authService.resendAuth(id);
    model.addAttribute("type", "6");
    model.addAttribute("id", id);

    return "common/result.part";
  }

  // @RequestMapping(value = "member/{id}", method = RequestMethod.POST)
  // public String modify(@PathVariable(value = "id") String id, HttpSession session, Model model) {
  // if (id.equals((String) session.getAttribute("id"))) {
  // model.addAttribute("member", memberService.selectMember(id));
  // }
  // return "member/modify";
  // }

  @RequestMapping(value = "member/modify.do", method = RequestMethod.POST)
  public String modify(MemberDto memberDto, HttpSession session, Model model,
      RedirectAttributes redirectAttributes) {
    MemberDto tmp = (MemberDto) session.getAttribute("userInfo");
    tmp.setBirth(memberDto.getBirth());
    tmp.setPwd(memberDto.getPwd());
    tmp.setTell(memberDto.getTell());
    tmp.setName(memberDto.getName());
    
    if(memberService.updateMember(tmp)>0) {
      redirectAttributes.addAttribute("err", "1");
      return "redirect:main.do";
    }
    return "redirect:main.page";
  }

  @RequestMapping("member/delete.do")
  public String deleteMember(String pwd, Model model, HttpSession session,
      RedirectAttributes redirectAttributes) {
    MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
    memberDto.setPwd(pwd);
    if (memberService.deleteMember(memberDto) > 0) {
      model.addAttribute("type", "7");
      session.invalidate();
      return "common/result.part";
    } else {
      redirectAttributes.addAttribute("err", "1");
      return "redirect:main.do";
    }
  }


  @RequestMapping(value = "member/confirm.do", method = RequestMethod.GET)
  public String memberConfirm(String userEmail, String authKey, Model model) { // 이메일인증
    model.addAttribute("id", userEmail);
    if (memberService.selectMember(userEmail).getConfirm() == 1) {
      model.addAttribute("type", "5");
    } else {
      if (authService.userAuth(userEmail, authKey) > 0) {
        model.addAttribute("type", "3");
      } else {
        model.addAttribute("type", "4");
      }
    }
    return "common/result.part";
  }
  
  
  @RequestMapping(value = "member/minpayment.do", method = RequestMethod.GET, produces="application/json;charset=UTF-8")
  public @ResponseBody String exhibitPaymentList(@RequestParam Map<String, String> param, Model model, HttpSession session) {
    MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
    param.put("mno", memberDto.getMno()+"");
    return paymentService.getMinPaymentList(param);
  }


}
