package com.bitcamp.artgo.board.model;

/**
* 파일명: FileDto.java
* 설 명: 파일 객체 정의
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/

public class FileDto {
  private int fno;
  private String folder;
  private String saveName;
  private String name;
  private int fileSize;
  private int thumb;
  private int bno;
  
  public int getFno() {
    return fno;
  }
  public void setFno(int fno) {
    this.fno = fno;
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
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public int getFileSize() {
    return fileSize;
  }
  public void setFileSize(int fileSize) {
    this.fileSize = fileSize;
  }
  public int getThumb() {
    return thumb;
  }
  public void setThumb(int thumb) {
    this.thumb = thumb;
  }
  public int getBno() {
    return bno;
  }
  public void setBno(int bno) {
    this.bno = bno;
  }
  
}
