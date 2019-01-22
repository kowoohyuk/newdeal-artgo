package com.bitcamp.artgo.board.dao;

import java.util.List;
import java.util.Map;
import com.bitcamp.artgo.board.model.BoardDto;
import com.bitcamp.artgo.board.model.ExhibitionDto;

/**
* 파일명: BoardDao.java
* 설 명: 게시글 기능 구현을 위한 Dao
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

public interface BoardDao {
  int writeBoardByExhibit(ExhibitionDto exhibitionDto);
  int modifyBoardByExhibit(ExhibitionDto exhibitionDto);
  int deleteBoard(int boardNo);
  BoardDto getBoard(int boardNo);
  List<BoardDto> getBoardList(Map<String, String> param);
}