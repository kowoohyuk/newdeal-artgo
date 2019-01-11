package com.bitcamp.artgo.board.dao;

import java.util.List;
import java.util.Map;
import com.bitcamp.artgo.board.model.NoticeDto;

/**
* 파일명: NoticeDao.java
* 설 명: 공지사항 기능 구현을 위한 Dao
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

public interface NoticeDao {
  int writeNotice(NoticeDto noticeDto);
  int modifyNotice(NoticeDto noticeDto);
  NoticeDto getNotice(int boardNo);
  List<NoticeDto> getNoticeList(Map<String, String> param);
}