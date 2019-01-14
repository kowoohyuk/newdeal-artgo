package com.bitcamp.artgo.mail.dao;

import com.bitcamp.artgo.mail.model.AuthDto;

public interface AuthDao {
  // 인증키 DB에 넣기
  public void createAuthKey(AuthDto authDto);
  // 인증키 일치시 DB칼럼(인증여부) false->true 로 변경
  public void userAuth(String userEmail);
}