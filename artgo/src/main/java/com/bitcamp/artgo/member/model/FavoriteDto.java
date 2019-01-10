package com.bitcamp.artgo.member.model;

/**
* 파일명: FavoriteDto.java
* 설 명: 즐겨찾기 객체 정의
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/


public class FavoriteDto {
  private int exhibitionNo;
  private int memberNo;
  
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
  
}
