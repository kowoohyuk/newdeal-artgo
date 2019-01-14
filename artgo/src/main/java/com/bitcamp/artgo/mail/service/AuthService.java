package com.bitcamp.artgo.mail.service;

public interface AuthService {
  public void createAuthKey(String id, String authKey);
  public void userAuth(String id); 
  public void create(String id);
}
