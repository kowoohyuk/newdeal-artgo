package com.bitcamp.artgo.payment.model;

/**
* 파일명: PaymentDto.java
* 설 명: 결제내역 객체 정의
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/

public class PaymentDto{
  private int pno;
  private int pay;
  private int finalPay;
  private int teenCount;
  private int normalCount;
  private String title;
  private String date;
  private String status;
  private int exno;
  private int mno;
public int getPno() {
	return pno;
}
public void setPno(int pno) {
	this.pno = pno;
}
public int getPay() {
	return pay;
}
public void setPay(int pay) {
	this.pay = pay;
}
public int getFinalPay() {
	return finalPay;
}
public void setFinalPay(int finalPay) {
	this.finalPay = finalPay;
}
public int getTeenCount() {
	return teenCount;
}
public void setTeenCount(int teenCount) {
	this.teenCount = teenCount;
}
public int getNormalCount() {
	return normalCount;
}
public void setNormalCount(int normalCount) {
	this.normalCount = normalCount;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
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
@Override
public String toString() {
	return "PaymentDto [pno=" + pno + ", pay=" + pay + ", finalPay=" + finalPay + ", teenCount=" + teenCount
			+ ", normalCount=" + normalCount + ", title=" + title + ", date=" + date + ", status=" + status + ", exno="
			+ exno + ", mno=" + mno + "]";
}
  
  
}
