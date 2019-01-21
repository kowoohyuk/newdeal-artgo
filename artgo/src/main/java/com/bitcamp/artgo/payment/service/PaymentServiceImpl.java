package com.bitcamp.artgo.payment.service;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bitcamp.artgo.common.service.CommonService;
import com.bitcamp.artgo.payment.dao.PaymentDao;
import com.bitcamp.artgo.payment.model.PaymentDto;
import com.bitcamp.artgo.util.ListConstance;
import com.bitcamp.artgo.util.PageNavigation;

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
  
  @Autowired
  private CommonService commonService;
  
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
  
  public String getMinPaymentList(Map<String, String> param) {
    int pg = Integer.parseInt(param.get("pg"));
    int end = pg*ListConstance.MINI_LIST_COUNT;
    int start = end-ListConstance.MINI_LIST_COUNT;
    param.put("start", start+"");
    param.put("end", end+"");
    List<PaymentDto> list = sqlSession.getMapper(PaymentDao.class).getPaymentList(param);
    JSONObject json = new JSONObject();
    JSONArray jsonArr = new JSONArray();
    for(PaymentDto paymentDto: list) {
        JSONObject payment = new JSONObject();
        payment.put("pno", paymentDto.getPno());
        String pay = String.format("%,d", paymentDto.getPay());
        String finalPay = String.format("%,d", paymentDto.getFinalPay());
        payment.put("pay", pay);
        payment.put("finalPay", finalPay);
        payment.put("teenCount", paymentDto.getTeenCount());
        payment.put("title", paymentDto.getTitle());
        payment.put("normalCount", paymentDto.getNormalCount());
        payment.put("status", paymentDto.getStatus());
        payment.put("date", paymentDto.getDate());
        payment.put("exno", paymentDto.getExno());
        payment.put("mno", paymentDto.getMno());
        
        jsonArr.put(payment);
    }
    param.put("page-type", "payment"); // 페이지 네비게이션을 여러 곳에서 쓰기 위함.
    PageNavigation navigation = commonService.makePageNavigation(param);
    navigation.setRoot("/member");
    navigation.makeNavigator();
    
    json.put("paymentList", jsonArr);
    json.put("navigator", navigation);
    return json.toString();
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