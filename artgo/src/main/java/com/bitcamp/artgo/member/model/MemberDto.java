package com.bitcamp.artgo.member.model;

/**
* 파일명: MemberDto.java
* 설 명: 멤버 객체 정의
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/

public class MemberDto {
  private int mno;
  private String id;
  private String pwd;
  private String type;
  private String name;
  private String tell;
  private int status;
  private int confirm;
  private String grade;
  private String role;
  private String joinDate;
  private String finalDate;
  private String birth;

  public int getMno() {
    return mno;
  }

  public void setMno(int mno) {
    this.mno = mno;
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

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
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

  public int getStatus() {
    return status;
  }

  public void setStatus(int status) {
    this.status = status;
  }

  public int getConfirm() {
    return confirm;
  }

  public void setConfirm(int confirm) {
    this.confirm = confirm;
  }

  public String getGrade() {
    return grade;
  }

  public void setGrade(String grade) {
    this.grade = grade;
  }

  public String getRole() {
    return role;
  }

  public void setRole(String role) {
    this.role = role;
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

  @Override
  public String toString() {
    return "MemberDto [mno=" + mno + ", id=" + id + ", type=" + type +", pwd=" + pwd + ", name=" + name + ", tell="
        + tell + ", status=" + status + ", confirm=" + confirm + ", grade=" + grade + ", joinDate="
        + joinDate + ", finalDate=" + finalDate + ", birth=" + birth + "]";
  }
  
}
