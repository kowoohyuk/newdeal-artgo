package com.bitcamp.artgo.common.dao;

import java.util.Map;

public interface CommonDao {
	
	int getNextSeq();
	void updateHit(int seq);
	int getTotalMemberCount(Map<String, String> param);
	
}
