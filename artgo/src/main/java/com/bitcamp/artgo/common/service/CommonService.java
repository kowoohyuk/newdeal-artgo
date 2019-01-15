package com.bitcamp.artgo.common.service;

import java.util.Map;
import com.bitcamp.artgo.util.PageNavigation;

public interface CommonService {
	PageNavigation makePageNavigation(Map<String, String> param);
}
