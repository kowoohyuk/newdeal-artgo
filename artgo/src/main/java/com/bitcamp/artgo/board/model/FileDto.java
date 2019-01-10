package com.bitcamp.artgo.board.model;

/**
* 파일명: FileDto.java
* 설 명: 파일 객체 정의
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/

public class FileDto {
  private int fileNo;
  private String folderName;
  private String saveName;
  private String name;
  private int size;
  private int thumb;
  private int boardNo;
  
  public int getFileNo() {
    return fileNo;
  }
  public void setFileNo(int fileNo) {
    this.fileNo = fileNo;
  }
  public String getFolderName() {
    return folderName;
  }
  public void setFolderName(String folderName) {
    this.folderName = folderName;
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
  public int getSize() {
    return size;
  }
  public void setSize(int size) {
    this.size = size;
  }
  public int getThumb() {
    return thumb;
  }
  public void setThumb(int thumb) {
    this.thumb = thumb;
  }
  public int getBoardNo() {
    return boardNo;
  }
  public void setBoardNo(int boardNo) {
    this.boardNo = boardNo;
  }
  
}
