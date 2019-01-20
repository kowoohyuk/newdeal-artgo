package com.bitcamp.artgo.board.service;

import com.bitcamp.artgo.board.model.ReviewDto;

/**
* 파일명: ReviewService.java
* 설 명: 후기 서비스 인터페이스 클래스
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

public interface ReviewService {
  int writeReview(ReviewDto reviewDto);
  int modifyReview(ReviewDto reviewDto);
  int deleteReview(int reviewNo);
  //ReviewDto getReview(int reviewNo);
  //List<ReviewDto> getReviewList(Map<String, String> param);
  String getReviewList(int exno);
}
