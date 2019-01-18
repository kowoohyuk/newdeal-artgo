package com.bitcamp.artgo.admin.service;

import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.apache.ibatis.session.SqlSession;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import com.bitcamp.artgo.board.dao.BoardDao;
import com.bitcamp.artgo.board.dao.ExhibitionDao;
import com.bitcamp.artgo.board.dao.FileDao;
import com.bitcamp.artgo.board.dao.NoticeDao;
import com.bitcamp.artgo.board.dao.ReviewDao;
import com.bitcamp.artgo.board.model.ExhibitionDto;
import com.bitcamp.artgo.board.model.FileDto;
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
  public int writeExhibit(ExhibitionDto exhibitionDto, MultipartFile multipartFile) {
    if (sqlSession.getMapper(BoardDao.class).writeBoardByExhibit(exhibitionDto) > 0) {
      if (sqlSession.getMapper(ExhibitionDao.class).writeExhibit(exhibitionDto) > 0) {
        if (multipartFile != null && !multipartFile.isEmpty()) {
          String opicture = multipartFile.getOriginalFilename();
          //String realPath = servletcontext.getRealPath("/resources/upload");
          String realPath = "C:\\Users\\kowoo\\Documents\\artgo_upload";
          DateFormat df = new SimpleDateFormat("yyMMdd");
          String saveFolder = df.format(new Date());
          String fullSaveFolder = realPath + File.separator + saveFolder;
          File dir = new File(fullSaveFolder);
          if (!dir.exists()) {
            dir.mkdirs();
          }

          String savePicture =
              UUID.randomUUID().toString() + opicture.substring(opicture.lastIndexOf('.'));
          File file = new File(fullSaveFolder, savePicture);
          try {
            multipartFile.transferTo(file);
          } catch (Exception e) {
            e.printStackTrace();
          }
          FileDto fileDto = new FileDto();

          fileDto.setFolder(fullSaveFolder);
          fileDto.setSaveName(savePicture);
          fileDto.setName(opicture);
          fileDto.setFileSize((int) multipartFile.getSize());
          fileDto.setBno(exhibitionDto.getBno());
          return sqlSession.getMapper(FileDao.class).writeFile(fileDto);
        }
      }

    }
    return 0;
  }

  @Override
  public int modifyExhibit(ExhibitionDto exhibitionDto) {
    sqlSession.getMapper(BoardDao.class).modifyBoardByExhibit(exhibitionDto);
    return sqlSession.getMapper(ExhibitionDao.class).modifyExhibit(exhibitionDto);
  }
  @Override
  public int deleteExhibit(int boardNo) {
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
  public String getMemberList(Map<String, String> param) {
    List<MemberDto> list = sqlSession.getMapper(MemberDao.class).selectMemberList(param);
    JSONObject json = new JSONObject();
    JSONArray jsonArr = new JSONArray();
    
    for(MemberDto memberDto: list) {
        JSONObject member = new JSONObject();
        member.put("mno", memberDto.getMno());
        member.put("id", memberDto.getId());
        member.put("name", memberDto.getName());
        member.put("birth", memberDto.getBirth());
        member.put("type", memberDto.getType());
        member.put("status", memberDto.getStatus());
        member.put("tell", memberDto.getTell());
        member.put("confirm", memberDto.getConfirm());
        member.put("role", memberDto.getRole());
        member.put("joindate", memberDto.getJoinDate());
        member.put("finaldate", memberDto.getFinalDate());
        jsonArr.put(member);
    }
    json.put("memberlist", jsonArr);
    return json.toString();
  }

//  @Override
//  public List<ReviewDto> getReviewList(Map<String, String> param) {
//    return sqlSession.getMapper(ReviewDao.class).getReviewList(param);
//  }
  

  @Override
  public List<ReviewDto> getReviewList(int reviewNo) {
    return sqlSession.getMapper(ReviewDao.class).getReviewList(reviewNo);
  }

  @Override
  public int updateMember(MemberDto memberDto) {
    return sqlSession.getMapper(MemberDao.class).updateMember(memberDto);
  }

}
