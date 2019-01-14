package com.bitcamp.artgo.board.model;

/**
* 파일명: ExhibitionDto.java
* 설 명: 전시회 객체 정의
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/

public class ExhibitionDto extends BoardDto {
  private int exno;
  private int teenPrice;
  private int normalPrice;
  private String startDate;
  private String endDate;
  public int getExno() {
    return exno;
  }
  public void setExno(int exno) {
    this.exno = exno;
  }
  public int getTeenPrice() {
    return teenPrice;
  }
  public void setTeenPrice(int teenPrice) {
    this.teenPrice = teenPrice;
  }
  public int getNormalPrice() {
    return normalPrice;
  }
  public void setNormalPrice(int normalPrice) {
    this.normalPrice = normalPrice;
  }
  public String getStartDate() {
    return startDate;
  }
  public void setStartDate(String startDate) {
    this.startDate = startDate;
  }
  public String getEndDate() {
    return endDate;
  }
  public void setEndDate(String endDate) {
    this.endDate = endDate;
  }
  
}
