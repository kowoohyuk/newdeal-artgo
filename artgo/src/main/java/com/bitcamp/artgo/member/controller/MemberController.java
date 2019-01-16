package com.bitcamp.artgo.member.controller;

import java.util.HashMap;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.bitcamp.artgo.mail.service.AuthService;
import com.bitcamp.artgo.member.model.MemberDto;
import com.bitcamp.artgo.member.service.MemberService;

/**
 * 파일명: MemberConrtoller.java
 * 설 명: 회원 관련 페이지, 기능
 * 작성일: 2019. 1. 11.
 * 작성자: 고 우 혁
 */

@Controller
public class MemberController {

  @Autowired
  MemberService memberService;
  
  @Autowired
  AuthService authService;
  
  @RequestMapping(value = "member/login.do", method = RequestMethod.GET)
  public String memberLogin(Model model) {
    return "member/login.part";
  }

  @RequestMapping("member/main.do")
  public String memberMain(HttpSession session) {
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

  @RequestMapping("member/findId.do")
  public String memberFindId() {
    return "member/findId.part";
  }

  @RequestMapping("member/findPwd.do")
  public String memberFindPwdPart() {
    return "member/findPwd.part";
  }
  
  @RequestMapping(value = "member/modify.do", method = RequestMethod.GET)
  public String memberModify() {
    return "member/modify.page";
  }
  
  @RequestMapping(value = "member/modify.do", method = RequestMethod.POST)
  public String memberModify(MemberDto memberDto) {
    System.out.println(memberDto);
    return "member/modify.page";
  }

  @RequestMapping(value = "member/login.do", method = RequestMethod.POST)
  public String memberLogin(MemberDto memberDto, HttpSession session, Model model, RedirectAttributes redirectAttributes) {
    /**
     * @함수명 : memberLogin(MemberDto memberDto, HttpSession session, Model model)
     * @작성일 : 2019. 1. 11.
     * @작성자 : 정 도 윤
     * @설명 : 로그인을 위한 메서드, 로그인 시 세션에 로그인 정보 입력.
     * @param : MemberDto, HttpSession, Model
     * @return : 1) 로그인 성공 시 메인 화면 이동 2) 실패 시 현재 페이지 내 경고창 출력
     **/
    MemberDto user = memberService.checkMember(memberDto);
    System.out.println(user);
    if (user != null) {
      if (user.getConfirm() == 0) {
        //return "member/emailPush.part";
      }
        MemberDto tmp = new MemberDto();
        tmp.setId(user.getId());
        tmp.setName(user.getName());
        session.setAttribute("userInfo", tmp);
        return "common/main.page";
    } else {
        redirectAttributes.addAttribute("err", "1");
        return "redirect:login.do";
    }
  }
  
  @RequestMapping(value = "member/kakaoLogin.do", method = RequestMethod.POST, headers={"Content-type=application/json"})
  public @ResponseBody String memberJoin(@RequestBody Map<String, String> param, HttpSession session) {
    MemberDto memberDto = new MemberDto();
    String id = "kakao" + param.get("id");
    memberDto.setId(id);
    memberDto.setPwd(param.get("id"));
    JSONObject result = new JSONObject();
    
    MemberDto tmp = memberService.checkMember(memberDto);
    System.out.println(tmp);
    if(tmp != null) {
      session.setAttribute("userInfo", tmp);
      result.put("result", "success");
    }else {
      memberDto.setName(param.get("nickname"));
      memberDto.setType("kakao");
      memberDto.setConfirm(1);      
      memberDto.setRole("ROLE_USER");
      memberDto.setConfirm(1);
      if(memberService.addMember(memberDto)>0) {
        session.setAttribute("userInfo", tmp);
        result.put("result", "success");
      }else {
        result.put("result", "fail");
      }
    }
    System.out.println("로그인 회원 정보 :" + tmp);
    return result.toString();
  }
  @RequestMapping(value="member/checkId.do", method=RequestMethod.POST)
  public @ResponseBody Map<String, String> checkId(@RequestParam String id) {
      Map<String, String> map = new HashMap<String, String>();
      if(memberService.selectMember(id)!=null) {
          map.put("result", "1");
      }else {
          map.put("result", "0");
      }
      return map;
  }

  @RequestMapping(value = "member/join.do", method = RequestMethod.POST)
  public String memberJoin(MemberDto memberDto) {
    System.out.println(memberDto);
    memberDto.setType("normal");
    memberDto.setConfirm(0);
    memberService.addMember(memberDto);
    authService.create(memberDto.getId());
    
    return "member/join.part";
  }
  

  @RequestMapping(value = "member/confirm.do", method = RequestMethod.GET)
  public String memberConfirm(String userEmail, Model model){ // 이메일인증
      authService.userAuth(userEmail);
      model.addAttribute("userEmail", userEmail);
      return "/main.do";
  }

  // @RequestMapping("member/ticket/list")
  // public String ticketList() {
  /**
   * @함수명 : cardInsert(CardDTO card)
   * @작성일 : 2019. 1. 11.
   * @작성자 : 고 우 혁
   * @설명 : 미정
   * @param : 미정
   * @return : 페이지
   **/
  // return "ticket/list";
  // }
  // @RequestMapping("member/ticket/list")
  // public String ticket() {
  // /**
  // * @설명 : 미정
  // * @param : 미정
  // * @return : 페이지
  // **/
  // return "ticket/list";
  // }

}
