package com.bitcamp.artgo.admin.dao;

import java.util.List;
import com.bitcamp.artgo.admin.model.ChartDataDto;

/**
* 파일명: ChartDao.java
* 설 명: 설명내용
* 작성일: 2019. 1. 22.
* 작성자: 고 우 혁
*/

public interface ChartDao {
  List<ChartDataDto> getPaymentChartDataByDay();
  List<ChartDataDto> getJoinChartDataByDay();
}


/**
* @함수명 : cardInsert(CardDTO card)
* @작성일 : 2019. 1. 22.
* @작성자 : 고 우 혁
* @설명 : 카드를 생성한다.
* @param CardDTO - projectNum, cardName
* @return int 성공한 갯수
**/