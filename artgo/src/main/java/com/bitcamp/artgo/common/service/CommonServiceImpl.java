package com.bitcamp.artgo.common.service;

import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bitcamp.artgo.common.dao.CommonDao;
import com.bitcamp.artgo.util.ListConstance;
import com.bitcamp.artgo.util.PageNavigation;

@Service
public class CommonServiceImpl implements CommonService {

	@Autowired
	SqlSession sqlSession;

	@Override
	public PageNavigation makePageNavigation(Map<String, String> param) {
		int pg = Integer.parseInt(param.get("pg"));
		int pageSize = ListConstance.PAGE_COUNT;
		int listSize = ListConstance.LIST_COUNT;

		PageNavigation navigation = new PageNavigation();
		int totalCount = 0;
		if(param.get("page-type").equals("member")) {
		  totalCount = sqlSession.getMapper(CommonDao.class).getTotalMemberCount(param);
		}else if(param.get("page-type").equals("exhibit")) {
		  totalCount = sqlSession.getMapper(CommonDao.class).getTotalExhibitCount(param);
		}
		System.out.println(totalCount);
		int totalPageCount = (totalCount - 1) / listSize + 1;
		navigation.setTotalArticleCount(totalCount);
		navigation.setTotalPageCount(totalPageCount);
		navigation.setPageNo(pg);
		navigation.setNowFirst(pg <= pageSize);
		navigation.setNowEnd(pg > ((totalPageCount - 1) / pageSize) * pageSize);
		return navigation;
	}
}
