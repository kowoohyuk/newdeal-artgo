package com.bitcamp.artgo.board.service;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bitcamp.artgo.board.dao.NoticeDao;
import com.bitcamp.artgo.board.model.NoticeDto;

/**
* 파일명: NoticeServiceImpl.java
* 설 명: 공지 서비스 구현 클래스
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/
@Service
public class NoticeServiceImpl implements NoticeService {

  @Autowired
  private SqlSession sqlSession;
  
  @Override
  public NoticeDto getNotice(int boardNo) {
    return sqlSession.getMapper(NoticeDao.class).getNotice(boardNo);
  }

  @Override
  public List<NoticeDto> getNoticeList(Map<String, String> param) {
    return sqlSession.getMapper(NoticeDao.class).getNoticeList(param);
  }

}

/**
* @함수명 : cardInsert(CardDTO card)
* @작성일 : 2019. 1. 11.
* @작성자 : 고 우 혁
* @설명 : 카드를 생성한다.
* @param CardDTO - projectNum, cardName
* @return int 성공한 갯수
**/