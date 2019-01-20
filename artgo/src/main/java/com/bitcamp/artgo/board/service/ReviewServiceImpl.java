package com.bitcamp.artgo.board.service;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bitcamp.artgo.board.dao.ReviewDao;
import com.bitcamp.artgo.board.model.ReviewDto;

/**
* 파일명: ReviewServiceImpl.java
* 설 명: 후기 서비스 구현 클래스
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

@Service
public class ReviewServiceImpl implements ReviewService {
  
  @Autowired
  private SqlSession sqlSession;

  @Override
  public int writeReview(ReviewDto reviewDto) {
    return sqlSession.getMapper(ReviewDao.class).writeReview(reviewDto);
  }

  @Override
  public int modifyReview(ReviewDto reviewDto) {
    return sqlSession.getMapper(ReviewDao.class).modifyReview(reviewDto);
  }

  @Override
  public int deleteReview(int reviewNo) {
    return sqlSession.getMapper(ReviewDao.class).deleteReview(reviewNo);
  }

  @Override
  public String getReviewList(int exno) {
    List<ReviewDto> list = sqlSession.getMapper(ReviewDao.class).getReviewList(exno);
    JSONObject json = new JSONObject();
    JSONArray jsonArr = new JSONArray();
    for(ReviewDto reviewDto: list) {
        reviewDto.setComment(reviewDto.getComment().replace("\n", "<br>"));
        
        JSONObject review = new JSONObject();
        review.put("rno", reviewDto.getRno());
        review.put("name", reviewDto.getName());
        review.put("date", reviewDto.getDate());
        review.put("exno", reviewDto.getExno());
        review.put("comment", reviewDto.getComment());
        review.put("score", reviewDto.getScore());
        
        jsonArr.put(review);
    }
    json.put("reviewlist", jsonArr);
    return json.toString();
  }

//  @Override
//  public List<ReviewDto> getReviewList(Map<String, String> param) {
//    return sqlSession.getMapper(ReviewDao.class).getReviewList(param);
//  }

}

/**
* @함수명 : cardInsert(CardDTO card)
* @작성일 : 2019. 1. 11.
* @작성자 : 고 우 혁
* @설명 : 카드를 생성한다.
* @param CardDTO - projectNum, cardName
* @return int 성공한 갯수
**/