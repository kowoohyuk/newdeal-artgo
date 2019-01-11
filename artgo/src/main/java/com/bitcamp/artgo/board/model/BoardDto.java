package com.bitcamp.artgo.board.model;

/**
* 파일명: BoardDto.java
* 설 명: 게시판 객체 정의
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/

public class BoardDto {
  private int boardNo;
  private String title;
  private String content;
  private int hit;
  private int date;
  private int status;
  private int memberNo;
  private int boardCode;
  
  public int getBoardNo() {
    return boardNo;
  }
  public void setBoardNo(int boardNo) {
    this.boardNo = boardNo;
  }
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }
  public String getContent() {
    return content;
  }
  public void setContent(String content) {
    this.content = content;
  }
  public int getHit() {
    return hit;
  }
  public void setHit(int hit) {
    this.hit = hit;
  }
  public int getDate() {
    return date;
  }
  public void setDate(int date) {
    this.date = date;
  }
  public int getStatus() {
    return status;
  }
  public void setStatus(int status) {
    this.status = status;
  }
  public int getMemberNo() {
    return memberNo;
  }
  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }
  public int getBoardCode() {
    return boardCode;
  }
  public void setBoardCode(int boardCode) {
    this.boardCode = boardCode;
  }
  
}
