package com.bitcamp.artgo.mail.service;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import com.bitcamp.artgo.mail.dao.AuthDao;
import com.bitcamp.artgo.mail.model.AuthDto;

@Service
public class AuthServiceImpl implements AuthService {
  
  @Inject
  private SqlSession sqlSession;
  
  @Autowired
  private JavaMailSender mailSender;
  
  @Override
  public int createAuthKey(String id, String authKey) {
    AuthDto authDto = new AuthDto();
    authDto.setId(id);
    authDto.setAuthKey(authKey);
    return sqlSession.getMapper(AuthDao.class).createAuthKey(authDto);
  }

  @Override
  public int userAuth(String id, String authKey) {
    AuthDto authDto = new AuthDto();
    authDto.setId(id);
    authDto.setAuthKey(authKey);
    int result = sqlSession.getMapper(AuthDao.class).userAuth(authDto);
    if(result>0) {
      sqlSession.getMapper(AuthDao.class).deleteAuth(id);
    }
    return result;
  }
  
  @Override
  public int create(String id) {
    String authKey = new TempKey().getKey(50, false); // 인증키 생성
    int keyResult = createAuthKey(id, authKey);
    try {
      MailHandler sendMail = new MailHandler(mailSender);
      sendMail.setSubject("[ArtGo 회원가입 인증 이메일 입니다.]");
      sendMail.setText(
          new StringBuffer().append("<h1>메일인증</h1>").append("<a href='http://localhost:8888/member/confirm.do?userEmail=").append(id).append("&authKey=").append(authKey).append("' target='_blenk'>이메일 인증 확인</a>").toString());
      sendMail.setFrom("newdealartgo@gmail.com", "아트고");
      sendMail.setTo(id);
      sendMail.send();
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return keyResult;
  }
}
