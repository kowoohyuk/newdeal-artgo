package com.bitcamp.artgo.board.model;

/**
* 파일명: NoticeDto.java
* 설 명: 공지사항 객체 정의
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/

public class NoticeDto extends BoardDto {
  private int nno;
  
  public int getNno() {
    return nno;
  }
  public void seNno(int nno) {
    this.nno = nno;
  }
  
}
