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
  public void createAuthKey(String id, String authKey) {
    AuthDto authDto = new AuthDto();
    authDto.setId(id);
    authDto.setAuthKey(authKey);
    sqlSession.getMapper(AuthDao.class).createAuthKey(authDto);
  }

  @Override
  public void userAuth(String id) {
     sqlSession.getMapper(AuthDao.class).userAuth(id);
  }
  
  @Override
  public void create(String id) {
    String authKey = new TempKey().getKey(50, false); // 인증키 생성
    createAuthKey(id, authKey);
    try {
      MailHandler sendMail = new MailHandler(mailSender);
      sendMail.setSubject("[홈페이지 이메일 인증]");
      sendMail.setText(
          new StringBuffer().append("<h1>메일인증</h1>").append("<a href='http://localhost/member/confirm.do?userEmail=").append(id).append("&authKey=").append(authKey).append("' target='_blenk'>이메일 인증 확인</a>").toString());
      sendMail.setFrom("newdealartgo@gmail.com", "아트고");
      sendMail.setTo(id);
      sendMail.send();
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
  }
}
