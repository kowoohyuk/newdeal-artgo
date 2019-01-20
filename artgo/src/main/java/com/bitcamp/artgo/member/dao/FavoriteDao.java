package com.bitcamp.artgo.member.dao;

import java.util.List;
import java.util.Map;
import com.bitcamp.artgo.board.model.ExhibitionDto;
import com.bitcamp.artgo.member.model.FavoriteDto;

/**
* 파일명: FavoriteDao.java
* 설 명: 즐겨찾기 기능 구현을 위한 Dao
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

public interface FavoriteDao {
  int addFavorite(Map<String, String> param);
  int removeFavorite(Map<String, String> param);
  FavoriteDto checkFavorite(Map<String, String> param);
  List<FavoriteDto> getFavoriteList(int mno);
}


/**
* @함수명 : cardInsert(CardDTO card)
* @작성일 : 2019. 1. 11.
* @작성자 : 고 우 혁
* @설명 : 카드를 생성한다.
* @param CardDTO - projectNum, cardName
* @return int 성공한 갯수
**/