package com.bitcamp.artgo.board.service;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.bitcamp.artgo.board.dao.ExhibitionDao;
import com.bitcamp.artgo.board.model.ExhibitionDto;

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

    @Override
    public ExhibitionDto getExhibition(int boardNo) {
        return sqlSession.getMapper(ExhibitionDao.class).getExhibition(boardNo);
    }

    @Override
    public List<ExhibitionDto> getExhibitionList(Map<String, String> param) {
        return sqlSession.getMapper(ExhibitionDao.class).getExhibitionList(param);
    }

    @Override
    @Transactional
    public int writeExhibition(ExhibitionDto exhibitionDto) {
        return sqlSession.getMapper(ExhibitionDao.class).writeExhibition(exhibitionDto);
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