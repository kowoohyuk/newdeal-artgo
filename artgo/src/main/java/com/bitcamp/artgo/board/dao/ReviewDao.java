package com.bitcamp.artgo.board.dao;

import java.util.List;
import java.util.Map;
import com.bitcamp.artgo.board.model.ReviewDto;

/**
* 파일명: ReviewDao.java
* 설 명: 후기 기능 구현을 위한 Dao
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

public interface ReviewDao {
  int writeReview(ReviewDto reviewDto);
  int modifyReview(ReviewDto reviewDto);
  int deleteReview(int rno);
  //ReviewDto getReview(int rno);
  List<ReviewDto> getReviewList(Map<String, String> param);
}
