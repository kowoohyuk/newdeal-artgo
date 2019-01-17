package com.bitcamp.artgo.member.dao;

import java.util.List;
import java.util.Map;
import com.bitcamp.artgo.member.model.MemberDto;

/**
* 파일명: MemberDao.java
* 설 명: 회원 기능 구현을 위한 Dao
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

public interface MemberDao {
  int addMember(MemberDto memberDto);
  MemberDto selectMember(String id);
  MemberDto selectMemberByTell(String tell);
  List<MemberDto> selectMemberList(Map<String,String> param);
  MemberDto checkMember(MemberDto memberDto);
  MemberDto findId(Map<String, String> param);
  MemberDto findPwd(Map<String, String> param);
  int updateMember(MemberDto memberDto);
  int deleteMember(MemberDto memberDto);
  int updateVisitMember(MemberDto memberDto);
  int updateGradeMember(MemberDto memberDto);
  int updateRoleMember(MemberDto memberDto);
  int updateConfirmMember(MemberDto memberDto);
  int updateMemberPwd(MemberDto memberDto);
}


/**
* @함수명 : cardInsert(CardDTO card)
* @작성일 : 2019. 1. 11.
* @작성자 : 고 우 혁
* @설명 : 카드를 생성한다.
* @param CardDTO - projectNum, cardName
* @return int 성공한 갯수
**/