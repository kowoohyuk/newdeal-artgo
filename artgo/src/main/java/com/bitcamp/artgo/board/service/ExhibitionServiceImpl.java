package com.bitcamp.artgo.board.service;

import java.util.List;
import java.util.Map;
import javax.servlet.ServletContext;
import org.apache.ibatis.session.SqlSession;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bitcamp.artgo.board.dao.ExhibitionDao;
import com.bitcamp.artgo.board.dao.FileDao;
import com.bitcamp.artgo.board.model.ExhibitionDto;
import com.bitcamp.artgo.board.model.FileDto;
import com.bitcamp.artgo.util.ListConstance;

/**
* 파일명: ExhibitionServiceImpl.java
* 설 명: 전시회 서비스 구현 클래스
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

@Service
public class ExhibitionServiceImpl implements ExhibitionService {

  @Autowired
  private SqlSession sqlSession;
  
  @Autowired
  ServletContext servletcontext;

  @Override
  public ExhibitionDto getExhibit(String bno) {
    int boardNo = Integer.parseInt(bno);
    return sqlSession.getMapper(ExhibitionDao.class).getExhibit(boardNo);
  }

  @Override
  public List<ExhibitionDto> getExhibitList(Map<String, String> param) {
    int pg = Integer.parseInt(param.get("pg"));
    int end = pg*ListConstance.LIST_COUNT;
    int start = end-ListConstance.LIST_COUNT;
    param.put("start", start+"");
    param.put("end", end+"");
    return sqlSession.getMapper(ExhibitionDao.class).getExhibitList(param);
  }
  
  @Override
  public String getImminentExhibit(){
    List<ExhibitionDto> list = sqlSession.getMapper(ExhibitionDao.class).getImminentExhibit();
    JSONObject json = new JSONObject();
    JSONArray jsonArr = new JSONArray();
    for(ExhibitionDto exhibitionDto: list) {
        
        JSONObject exhibition = new JSONObject();
        exhibition.put("bno", exhibitionDto.getBno());
        exhibition.put("title", exhibitionDto.getTitle());
        exhibition.put("place", exhibitionDto.getPlace());
        exhibition.put("exno", exhibitionDto.getExno());
        exhibition.put("endDate", exhibitionDto.getEndDate());
        
        jsonArr.put(exhibition);
    }
    json.put("exhibitionlist", jsonArr);
    return json.toString();
  }
  
  public List<ExhibitionDto> getNewExhibit(){
    return sqlSession.getMapper(ExhibitionDao.class).getNewExhibit();
  }
  
  public List<FileDto> getBannerList(){
    return sqlSession.getMapper(FileDao.class).getBannerList();
  }
}


/**
* @함수명 : cardInsert(CardDTO card)
* @작성일 : 2019. 1. 11.
* @작성자 : 고 우 혁
* @설명 : 카드를 생성한다.
* @param CardDTO - projectNum, cardName
* @return int 성공한 갯수
**/