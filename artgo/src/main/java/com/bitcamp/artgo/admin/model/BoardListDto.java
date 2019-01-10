package com.bitcamp.artgo.admin.model;

/**
* 파일명: BoardListDto.java
* 설 명: 게시판 목록 객체 정의
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/

public class BoardListDto extends CategoryDto{
  private int boardCode;
  private String boardName;
  
  public int getBoardCode() {
    return boardCode;
  }
  public void setBoardCode(int boardCode) {
    this.boardCode = boardCode;
  }
  public String getBoardName() {
    return boardName;
  }
  public void setBoardName(String boardName) {
    this.boardName = boardName;
  }
  
}
