package com.bitcamp.artgo.board.dao;

import java.util.List;
import java.util.Map;
import com.bitcamp.artgo.board.model.ExhibitionDto;

/**
* 파일명: ExhibitionDao.java
* 설 명: 전시회 기능 구현을 위한 Dao
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

public interface ExhibitionDao {
  int writeExhibit(ExhibitionDto exhibitionDto);
  int modifyExhibit(ExhibitionDto exhibitionDto);
  int deleteExhibit(int boardNo);
  ExhibitionDto getExhibit(int boardNo);
  List<ExhibitionDto> getExhibitList(Map<String, String> param);
}