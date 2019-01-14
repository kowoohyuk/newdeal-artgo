package com.bitcamp.artgo.admin.service;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.bitcamp.artgo.board.dao.BoardDao;
import com.bitcamp.artgo.board.dao.ExhibitionDao;
import com.bitcamp.artgo.board.dao.NoticeDao;
import com.bitcamp.artgo.board.dao.ReviewDao;
import com.bitcamp.artgo.board.model.ExhibitionDto;
import com.bitcamp.artgo.board.model.NoticeDto;
import com.bitcamp.artgo.board.model.ReviewDto;
import com.bitcamp.artgo.member.dao.MemberDao;
import com.bitcamp.artgo.member.model.MemberDto;

/**
* 파일명: AdminSerivceImpl.java
* 설 명: 관리자 서비스 구현 클래스
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

@Service
public class AdminSerivceImpl implements AdminService {

  @Autowired
  private SqlSession sqlSession;
  
  @Override
  @Transactional
  public int writeNotice(NoticeDto noticeDto) {
    sqlSession.getMapper(BoardDao.class).writeBoardByNotice(noticeDto);
    return sqlSession.getMapper(NoticeDao.class).writeNotice(noticeDto);
  }

  @Override
  @Transactional
  public int modifyNotice(NoticeDto noticeDto) {
    sqlSession.getMapper(BoardDao.class).modifyBoardByNotice(noticeDto);
    return sqlSession.getMapper(NoticeDao.class).modifyNotice(noticeDto);
  }

  @Override
  public int deleteNotice(int boardNo) {
    return sqlSession.getMapper(BoardDao.class).deleteBoard(boardNo);
  }

  @Override
  public int writeExhibition(ExhibitionDto exhibitionDto) {
    sqlSession.getMapper(BoardDao.class).writeBoardByExhibition(exhibitionDto);
    return sqlSession.getMapper(ExhibitionDao.class).writeExhibition(exhibitionDto);
  }

  @Override
  public int modifyExhibition(ExhibitionDto exhibitionDto) {
    sqlSession.getMapper(BoardDao.class).modifyBoardByExhibition(exhibitionDto);
    return sqlSession.getMapper(ExhibitionDao.class).modifyExhibition(exhibitionDto);
  }
  @Override
  public int deleteExhibition(int boardNo) {
    return sqlSession.getMapper(BoardDao.class).deleteBoard(boardNo);
  }

  @Override
  public int deleteReview(int reviewNo) {
    return sqlSession.getMapper(ReviewDao.class).deleteReview(reviewNo);
  }

  @Override
  public List<NoticeDto> getNoticeList(Map<String, String> param) {
    return sqlSession.getMapper(NoticeDao.class).getNoticeList(param);
  }
  
  @Override
  public List<MemberDto> getMemberList(Map<String, String> param) {
    return sqlSession.getMapper(MemberDao.class).selectMemberList();
  }

  @Override
  public List<ReviewDto> getReviewList(Map<String, String> param) {
    return sqlSession.getMapper(ReviewDao.class).getReviewList(param);
  }

  @Override
  public int updateMember(MemberDto memberDto) {
    return sqlSession.getMapper(MemberDao.class).updateMember(memberDto);
  }

}
