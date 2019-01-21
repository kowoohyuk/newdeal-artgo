package com.bitcamp.artgo.payment.service;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bitcamp.artgo.board.dao.ExhibitionDao;
import com.bitcamp.artgo.payment.dao.PaymentDao;
import com.bitcamp.artgo.payment.model.PaymentDto;
import com.bitcamp.artgo.util.ListConstance;

/**
* 파일명: PaymentServiceImpl.java
* 설 명: 설명내용
* 작성일: 2019. 1. 21.
* 작성자: 고 우 혁
*/

@Service
public class PaymentServiceImpl implements PaymentService {
  
  @Autowired
  private SqlSession sqlSession;
  
  public int writePayment(PaymentDto paymentDto) {
    return sqlSession.getMapper(PaymentDao.class).writePayment(paymentDto);
  }

  @Override
  public List<PaymentDto> getPaymentList(Map<String, String> param) {
    int pg = Integer.parseInt(param.get("pg"));
    int end = pg*ListConstance.LIST_COUNT;
    int start = end-ListConstance.LIST_COUNT;
    param.put("start", start+"");
    param.put("end", end+"");
    return sqlSession.getMapper(PaymentDao.class).getPaymentList(param);
  }
}


/**
* @함수명 : cardInsert(CardDTO card)
* @작성일 : 2019. 1. 21.
* @작성자 : 고 우 혁
* @설명 : 카드를 생성한다.
* @param CardDTO - projectNum, cardName
* @return int 성공한 갯수
**/