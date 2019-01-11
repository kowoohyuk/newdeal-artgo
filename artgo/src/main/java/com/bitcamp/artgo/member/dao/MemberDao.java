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
  int joinMember(MemberDto memberDto);
  int modifyMember(MemberDto memberDto);
  int deleteMember(int memberNo);
  MemberDto getMember(int memberNo);
  List<MemberDto> getMemberList(Map<String, String> param);
}


/**
* @함수명 : cardInsert(CardDTO card)
* @작성일 : 2019. 1. 11.
* @작성자 : 고 우 혁
* @설명 : 카드를 생성한다.
* @param CardDTO - projectNum, cardName
* @return int 성공한 갯수
**/