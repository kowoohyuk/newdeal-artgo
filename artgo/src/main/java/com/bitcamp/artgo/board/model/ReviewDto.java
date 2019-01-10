package com.bitcamp.artgo.board.model;

/**
* 파일명: ReviewDto.java
* 설 명: 후기 객체 정의
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/

public class ReviewDto {
  private int reviewNo;
  private int score;
  private int comment;
  private int status;
  private int exhibitionNo;
  private int writerId;
  private int memberNo;
  
  public int getReviewNo() {
    return reviewNo;
  }
  public void setReviewNo(int reviewNo) {
    this.reviewNo = reviewNo;
  }
  public int getScore() {
    return score;
  }
  public void setScore(int score) {
    this.score = score;
  }
  public int getComment() {
    return comment;
  }
  public void setComment(int comment) {
    this.comment = comment;
  }
  public int getReviewStatus() {
    return status;
  }
  public void setReviewStatus(int status) {
    this.status = status;
  }
  public int getExhibitionNo() {
    return exhibitionNo;
  }
  public void setExhibitionNo(int exhibitionNo) {
    this.exhibitionNo = exhibitionNo;
  }
  public int getMemberNo() {
    return memberNo;
  }
  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }
  public int getStatus() {
    return status;
  }
  public void setStatus(int status) {
    this.status = status;
  }
  public int getWriterId() {
    return writerId;
  }
  public void setWriterId(int writerId) {
    this.writerId = writerId;
  }
  
}
