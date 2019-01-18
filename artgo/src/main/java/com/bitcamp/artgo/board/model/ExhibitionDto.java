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
  private String address;
  private String place;
  private String endDate;
  private int fno;
  private String name;
  private String folder;
  private String saveName;
  
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
  public String getAddress() {
    return address;
  }
  public void setAddress(String address) {
    this.address = address;
  }
  public String getPlace() {
    return place;
  }
  public void setPlace(String place) {
    this.place = place;
  }
  public int getFno() {
    return fno;
  }
  public void setFno(int fno) {
    this.fno = fno;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public String getFolder() {
    return folder;
  }
  public void setFolder(String folder) {
    this.folder = folder;
  }
  public String getSaveName() {
    return saveName;
  }
  public void setSaveName(String saveName) {
    this.saveName = saveName;
  }
  @Override
  public String toString() {
    return "ExhibitionDto [exno=" + exno + ", teenPrice=" + teenPrice + ", normalPrice="
        + normalPrice + ", startDate=" + startDate + ", address=" + address + ", place=" + place
        + ", endDate=" + endDate + ", fno=" + fno + ", name=" + name + ", folder=" + folder + "]";
  }
}
