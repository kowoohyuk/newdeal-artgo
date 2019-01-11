package com.bitcamp.artgo.board.service;

import java.util.List;
import java.util.Map;
import com.bitcamp.artgo.board.model.NoticeDto;

/**
* 파일명: NoticeService.java
* 설 명: 공지사항 서비스 인터페이스 클래스
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

public interface NoticeService {
  NoticeDto getNotice(int boardNo);
  List<NoticeDto> getNoticeList(Map<String, String> param);
}