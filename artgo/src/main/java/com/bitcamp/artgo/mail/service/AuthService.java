package com.bitcamp.artgo.mail.service;

public interface AuthService {
  public int createAuthKey(String id, String authKey);
  public int userAuth(String id, String authKey); 
  public int create(String id);
}
