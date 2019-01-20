package com.bitcamp.artgo.member.service;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bitcamp.artgo.member.dao.FavoriteDao;
import com.bitcamp.artgo.member.model.FavoriteDto;

@Service
public class FavoriteServiceImpl implements FavoriteService {
  
  @Autowired
  SqlSession sqlSession;
  
  public String addFavorite(Map<String, String> param) {
    int result = sqlSession.getMapper(FavoriteDao.class).addFavorite(param);
    JSONObject json = new JSONObject();
    if(result>0) {
      json.put("result", "success");
    }else {
      json.put("result", "fail");
    }
    return json.toString();
  }
  
  public String removeFavorite(Map<String, String> param) {
    int result = sqlSession.getMapper(FavoriteDao.class).removeFavorite(param);
    JSONObject json = new JSONObject();
    if(result>0) {
      json.put("result", "success");
    }else {
      json.put("result", "fail");
    }
    
    return json.toString();
  }
  
  public String checkFavorite(Map<String, String> param) {
    FavoriteDto favoriteDto = sqlSession.getMapper(FavoriteDao.class).checkFavorite(param);
    JSONObject json = new JSONObject();
    if(favoriteDto != null) {
      json.put("result", "success");
    }else {
      json.put("result", "fail");
    }
    return json.toString();    
  }
  
  public String getFavoriteList(int mno){
    List<FavoriteDto> list = sqlSession.getMapper(FavoriteDao.class).getFavoriteList(mno);
    JSONObject json = new JSONObject();
    JSONArray jsonArr = new JSONArray();
    for(FavoriteDto favoriteDto: list) {
        
        JSONObject favor = new JSONObject();
        favor.put("bno", favoriteDto.getBno());
        favor.put("exno", favoriteDto.getExno());
        favor.put("title", favoriteDto.getTitle());
        favor.put("place", favoriteDto.getPlace());
        favor.put("startDate", favoriteDto.getStartDate());
        favor.put("endDate", favoriteDto.getEndDate());
        favor.put("folder", favoriteDto.getFolder());
        favor.put("name", favoriteDto.getName());
        favor.put("savename", favoriteDto.getSaveName());
        
        jsonArr.put(favor);
    }
    json.put("favorlist", jsonArr);
    return json.toString();
  }
}
