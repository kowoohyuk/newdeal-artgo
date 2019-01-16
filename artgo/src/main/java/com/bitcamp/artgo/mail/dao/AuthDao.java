package com.bitcamp.artgo.mail.dao;

import com.bitcamp.artgo.mail.model.AuthDto;

public interface AuthDao {
  // 인증키 DB에 넣기
  public int createAuthKey(AuthDto authDto);
  // 인증키 일치시 DB칼럼(인증여부) false->true 로 변경
  public int userAuth(AuthDto AuthDto);
  public int deleteAuth(String id);
}