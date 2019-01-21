package com.bitcamp.artgo.member.model;

import com.bitcamp.artgo.board.model.ExhibitionDto;

/**
* 파일명: FavoriteDto.java
* 설 명: 즐겨찾기 객체 정의
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/


public class FavoriteDto extends ExhibitionDto {
  private int exno;
  private int mno;
  
  public int getExno() {
    return exno;
  }
  public void setExno(int exno) {
    this.exno = exno;
  }
  public int getMno() {
    return mno;
  }
  public void setMno(int mno) {
    this.mno = mno;
  }
}
