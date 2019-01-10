package com.bitcamp.artgo.board.model;

/**
* 파일명: QuestionDto.java
* 설 명: 문의 객체 정의
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/

public class QuestionDto {
  private int questionNo;
  private int showType;
  private String comment;
  private int status;
  private String date;
  private int PquestionNo;
  private int exhibitionNo;
  
  public int getQuestionNo() {
    return questionNo;
  }
  public void setQuestionNo(int questionNo) {
    this.questionNo = questionNo;
  }
  public int getShowType() {
    return showType;
  }
  public void setShowType(int showType) {
    this.showType = showType;
  }
  public String getComment() {
    return comment;
  }
  public void setComment(String comment) {
    this.comment = comment;
  }
  public int getStatus() {
    return status;
  }
  public void setStatus(int status) {
    this.status = status;
  }
  public String getDate() {
    return date;
  }
  public void setDate(String date) {
    this.date = date;
  }
  public int getPquestionNo() {
    return PquestionNo;
  }
  public void setPquestionNo(int pquestionNo) {
    PquestionNo = pquestionNo;
  }
  public int getExhibitionNo() {
    return exhibitionNo;
  }
  public void setExhibitionNo(int exhibitionNo) {
    this.exhibitionNo = exhibitionNo;
  }
  
}
