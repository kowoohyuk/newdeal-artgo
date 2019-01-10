package com.bitcamp.artgo.board.model;

/**
* 파일명: NoticeDto.java
* 설 명: 공지사항 객체 정의
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/

public class NoticeDto extends BoardDto {
  private int noticeNo;
  private int importantType;
  
  public int getNoticeNo() {
    return noticeNo;
  }
  public void setNoticeNo(int noticeNo) {
    this.noticeNo = noticeNo;
  }
  public int getImportantType() {
    return importantType;
  }
  public void setImportantType(int importantType) {
    this.importantType = importantType;
  }
  
  
}
