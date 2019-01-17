package com.bitcamp.artgo.member.service;

import java.util.List;
import java.util.Map;

import com.bitcamp.artgo.member.dao.MemberDao;
import com.bitcamp.artgo.member.model.MemberDto;

/**
* 파일명: MemberService.java
* 설 명: 설명내용
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

public interface MemberService {
  //가입
  int addMember(MemberDto memberDto);
  //이메일 검사
  MemberDto checkTell(String tell);
  //아이디 검사 및 조회 (정보 수정을 위한 조회!)
  MemberDto selectMember(String id);
  //로그인 시
  MemberDto checkMember(MemberDto memberDto);
  //관리자 페이지 회원 목록
  List<MemberDto> selectMemberList(Map<String, String> param);
  //회원 정보 수정
  int updateMember(MemberDto memberDto);
  //회원 탈퇴
  int deleteMember(MemberDto memberDto);


}
