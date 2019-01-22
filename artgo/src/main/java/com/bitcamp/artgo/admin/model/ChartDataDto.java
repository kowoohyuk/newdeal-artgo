package com.bitcamp.artgo.admin.model;

/**
* 파일명: PaymentChartDto.java
* 설 명: 설명내용
* 작성일: 2019. 1. 22.
* 작성자: 고 우 혁
*/

public class ChartDataDto {
  private String date;
  private int sum;
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public int getSum() {
	return sum;
}
public void setSum(int sum) {
	this.sum = sum;
}
@Override
public String toString() {
	return "ChartDataDto [date=" + date + ", sum=" + sum + "]";
}
  
  
}