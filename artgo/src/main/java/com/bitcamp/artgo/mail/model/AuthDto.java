package com.bitcamp.artgo.mail.model;

public class AuthDto {
  private String id;
  private String authKey;
  
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }
  public String getAuthKey() {
    return authKey;
  }
  public void setAuthKey(String authKey) {
    this.authKey = authKey;
  }
  @Override
  public String toString() {
    return "AuthDto [id=" + id + ", authKey=" + authKey + "]";
  }
  
}
