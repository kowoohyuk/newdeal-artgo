package com.bitcamp.artgo.member.service;

import java.util.Map;

/**
* 파일명: FavoriteService.java
* 설 명: 설명내용
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

public interface FavoriteService {
  String addFavorite(Map<String, String> param);
  String removeFavorite(Map<String, String> param);
  String checkFavorite(Map<String, String> param);
  String getFavoriteList(int mno);
}


/**
* @함수명 : cardInsert(CardDTO card)
* @작성일 : 2019. 1. 11.
* @작성자 : 고 우 혁
* @설명 : 카드를 생성한다.
* @param CardDTO - projectNum, cardName
* @return int 성공한 갯수
**/