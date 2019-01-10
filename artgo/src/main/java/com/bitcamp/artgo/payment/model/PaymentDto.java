package com.bitcamp.artgo.payment.model;

/**
* 파일명: PaymentDto.java
* 설 명: 결제내역 객체 정의
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/

public class PaymentDto {
  private int paymentNo;
  private int pay;
  private int finalPay;
  private int teenAmount;
  private int normalAmount;
  private String date;
  private String status;
  private int exhibitionNo;
  private int memberNo;
  
  public int getPaymentNo() {
    return paymentNo;
  }
  public void setPaymentNo(int paymentNo) {
    this.paymentNo = paymentNo;
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
  public int getTeenAmount() {
    return teenAmount;
  }
  public void setTeenAmount(int teenAmount) {
    this.teenAmount = teenAmount;
  }
  public int getNormalAmount() {
    return normalAmount;
  }
  public void setNormalAmount(int normalAmount) {
    this.normalAmount = normalAmount;
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
