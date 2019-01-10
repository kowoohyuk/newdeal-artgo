package com.bitcamp.artgo.admin.model;

/**
* 파일명: CategoryDto.java
* 설 명: 카테고리 객체 정의
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/

public class CategoryDto {
  private int CategoryCode;
  private String categoryName;
  
  public int getCategoryCode() {
    return CategoryCode;
  }
  public void setCategoryCode(int categoryCode) {
    CategoryCode = categoryCode;
  }
  public String getName() {
    return categoryName;
  }
  public void setName(String categoryName) {
    this.categoryName = categoryName;
  }
  
}
