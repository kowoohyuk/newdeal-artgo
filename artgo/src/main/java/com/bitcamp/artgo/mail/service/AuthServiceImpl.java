package com.bitcamp.artgo.mail.service;

import javax.inject.Inject;
import org.apache.commons.codec.net.URLCodec;
import org.apache.ibatis.session.SqlSession;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import com.bitcamp.artgo.mail.dao.AuthDao;
import com.bitcamp.artgo.mail.model.AuthDto;
import com.bitcamp.artgo.member.dao.MemberDao;
import com.bitcamp.artgo.member.model.MemberDto;
import com.bitcamp.artgo.member.service.AES256Util;

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
  public int resendAuth(String id) {
    sqlSession.getMapper(AuthDao.class).deleteAuth(id);
    return create(id);
  }
  
  @Override
  public String createTmpPwd(String id) {
    String authKey = new TempKey().getKey(8, false); // 인증키 생성
    MemberDto memberDto = new MemberDto();
    memberDto.setId(id);
    memberDto.setPwd(enc(authKey));
    int result = sqlSession.getMapper(MemberDao.class).updateMemberPwd(memberDto);
    JSONObject json = new JSONObject();
    if(result>0) {
      try {
        MailHandler sendMail = new MailHandler(mailSender);
        sendMail.setSubject("[ArtGo 임시 비밀번호 입니다.]");
        sendMail.setText(
            new StringBuffer().append("<h3></h3>").append("<p>회원님의 임시 비밀번호는 "+authKey+" 입니다.</p>").toString());
        sendMail.setFrom("newdealartgo@gmail.com", "아트고");
        sendMail.setTo(id);
        sendMail.send();
        
        json.put("result", "ok");
        
      } catch (Exception e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      }
    }else {
      json.put("result", "fail");
    }
    return json.toString();
  }
  
  @Override
  public int create(String id) {
    String authKey = new TempKey().getKey(50, false); // 인증키 생성
    int keyResult = createAuthKey(id, authKey);
    try {
      MailHandler sendMail = new MailHandler(mailSender);
      sendMail.setSubject("[ArtGo 회원가입 인증 이메일 입니다.]");
      sendMail.setText(
          new StringBuffer().append("<h3>메일인증</h3>").append("<a href='http://localhost:8888/member/confirm.do?userEmail=").append(id).append("&authKey=").append(authKey).append("' target='_blenk'>이메일 인증 확인</a>").toString());
      sendMail.setFrom("newdealartgo@gmail.com", "아트고");
      sendMail.setTo(id);
      sendMail.send();
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return keyResult;
  }
  
  public String enc(String pwd) {
    String encLoginidx = "";
    try {
        String key = "aes256-test-key!!";
        AES256Util aes256 = new AES256Util(key);
        URLCodec codec = new URLCodec();
        
        encLoginidx = codec.encode(aes256.aesEncode(pwd)); 
        
    } catch (Exception e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
    }
    
    return encLoginidx;
}
}
