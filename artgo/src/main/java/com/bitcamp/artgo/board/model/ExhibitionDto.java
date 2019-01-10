package com.bitcamp.artgo.board.model;

/**
* 파일명: ExhibitionDto.java
* 설 명: 전시회 객체 정의
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/

public class ExhibitionDto extends BoardDto {
  private int exhibitionNo;
  private int teenPrice;
  private int normalPrice;
  private String startDate;
  private String endDate;
  private int genreNo;
  private int areaNo;
  
  public int getExhibitionNo() {
    return exhibitionNo;
  }
  public void setExhibitionNo(int exhibitionNo) {
    this.exhibitionNo = exhibitionNo;
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
  public int getGenreNo() {
    return genreNo;
  }
  public void setGenreNo(int genreNo) {
    this.genreNo = genreNo;
  }
  public int getAreaNo() {
    return areaNo;
  }
  public void setAreaNo(int areaNo) {
    this.areaNo = areaNo;
  }
  
}
