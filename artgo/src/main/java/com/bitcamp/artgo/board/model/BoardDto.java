package com.bitcamp.artgo.board.model;

/**
* 파일명: BoardDto.java
* 설 명: 게시판 객체 정의
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/

public class BoardDto {
  private int bno;
  private String title;
  private String content;
  private int hit;
  private int date;
  private int status;
  private int mno;
  private int bcode;
  
  public int getBno() {
    return bno;
  }
  public void setBno(int bno) {
    this.bno = bno;
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
  public int getMno() {
    return mno;
  }
  public void setMno(int mno) {
    this.mno = mno;
  }
  public int getBcode() {
    return bcode;
  }
  public void setBcode(int bcode) {
    this.bcode = bcode;
  }
  @Override
  public String toString() {
    return "BoardDto [bno=" + bno + ", title=" + title + ", content=" + content + ", hit=" + hit
        + ", date=" + date + ", status=" + status + ", mno=" + mno + ", bcode=" + bcode + "]";
  }
}
