package com.bitcamp.artgo.admin.model;

/**
* 파일명: Genre.java
* 설 명: 장르 객체 정의
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/


public class GenreDto {
  private int genreNo;
  private String genreName;
  
  public int getGenreNo() {
    return genreNo;
  }
  public void setGenreNo(int genreNo) {
    this.genreNo = genreNo;
  }
  public String getGenreName() {
    return genreName;
  }
  public void setGenreName(String genreName) {
    this.genreName = genreName;
  }
  
}
