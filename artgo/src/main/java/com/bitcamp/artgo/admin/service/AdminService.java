package com.bitcamp.artgo.admin.service;

import java.util.List;
import java.util.Map;
import org.springframework.web.multipart.MultipartFile;
import com.bitcamp.artgo.admin.model.ChartDataDto;
import com.bitcamp.artgo.board.model.ExhibitionDto;
import com.bitcamp.artgo.board.model.ReviewDto;
import com.bitcamp.artgo.member.model.MemberDto;

/**
* 파일명: AdminService.java
* 설 명: 관리자 서비스 인터페이스 클래스
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

public interface AdminService {
  int deleteNotice(int boardNo);
  int writeExhibit(ExhibitionDto exhibitionDto, MultipartFile multipartFile);
  int modifyExhibit(ExhibitionDto exhibitionDto);
  int deleteExhibit(int boardNo);
  int deleteReview(int reviewNo);
  String getMemberList(Map<String, String> param);
  //List<ReviewDto> getReviewList(Map<String, String> param);
  int updateMember(MemberDto memberDto);
  List<ReviewDto> getReviewList(int reviewNo);
  String getChartList();
  
}