package com.bitcamp.artgo.member.model;

/**
* 파일명: MemberDto.java
* 설 명: 멤버 객체 정의
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/

public class MemberDto {
  private int memberNo;
  private String id;
  private String pwd;
  private String name;
  private String tell;
  private String memberStatus;
  private String grade;
  private String joinDate;
  private String finalDate;
  private String birth;
  
  public int getMemberNo() {
    return memberNo;
  }
  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }
  public String getPwd() {
    return pwd;
  }
  public void setPwd(String pwd) {
    this.pwd = pwd;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public String getTell() {
    return tell;
  }
  public void setTell(String tell) {
    this.tell = tell;
  }
  public String getMemberStatus() {
    return memberStatus;
  }
  public void setMemberStatus(String memberStatus) {
    this.memberStatus = memberStatus;
  }
  public String getGrade() {
    return grade;
  }
  public void setGrade(String grade) {
    this.grade = grade;
  }
  public String getJoinDate() {
    return joinDate;
  }
  public void setJoinDate(String joinDate) {
    this.joinDate = joinDate;
  }
  public String getFinalDate() {
    return finalDate;
  }
  public void setFinalDate(String finalDate) {
    this.finalDate = finalDate;
  }
  public String getBirth() {
    return birth;
  }
  public void setBirth(String birth) {
    this.birth = birth;
  }
}
