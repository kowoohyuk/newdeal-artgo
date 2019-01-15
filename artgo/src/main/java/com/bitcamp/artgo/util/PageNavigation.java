package com.bitcamp.artgo.util;

/**
* 파일명: PageNavigation.java
* 설 명: 페이징 처리를 해주는 클래스.
* 작성일: 2019. 1. 10.
* 작성자: 고 우 혁
*/

public class PageNavigation {
  private String root;
  private boolean nowFirst;
  private boolean nowEnd;
  private int totalArticleCount;
  private int newArticleCount;
  private int totalPageCount;
  private int pageNo;
  private String navigator;
  
  public String getRoot() {
      return root;
  }
  public void setRoot(String root) {
      this.root = root;
  }
  public boolean isNowFirst() {
      return nowFirst;
  }
  public void setNowFirst(boolean nowFirst) {
      this.nowFirst = nowFirst;
  }
  public boolean isNowEnd() {
      return nowEnd;
  }
  public void setNowEnd(boolean nowEnd) {
      this.nowEnd = nowEnd;
  }
  public int getTotalArticleCount() {
      return totalArticleCount;
  }
  public void setTotalArticleCount(int totalArticleCount) {
      this.totalArticleCount = totalArticleCount;
  }
  public int getNewArticleCount() {
      return newArticleCount;
  }
  public void setNewArticleCount(int newArticleCount) {
      this.newArticleCount = newArticleCount;
  }
  public int getTotalPageCount() {
      return totalPageCount;
  }
  public void setTotalPageCount(int totalPageCount) {
      this.totalPageCount = totalPageCount;
  }
  public int getPageNo() {
      return pageNo;
  }
  public void setPageNo(int pageNo) {
      this.pageNo = pageNo;
  }
  public String getNavigator() {
      return navigator;
  }
  public void makeNavigator() {
    /** 메서드 주석
    * @함수명 : makeNavigator()
    * @작성일 : 2019. 1. 10.
    * @작성자 : 고 우 혁
    * @설명 : 페이지 네비게이션을 생성한다.
    * @param : 없음
    * @return void
    **/
      StringBuffer tmpNavigator = new StringBuffer();
      
      int pageSize = ListConstance.PAGE_COUNT;
      int preEnd = (pageNo-1)/pageSize * pageSize;
      tmpNavigator.append("  <ul>");

      if (this.isNowFirst()) {
          tmpNavigator.append("  <li>");
          tmpNavigator.append("   <label id='firstpage'>최신목록</label>");
          tmpNavigator.append("  </li>");
          tmpNavigator.append("  <li><label>이전</label></li>");
      } else {
          tmpNavigator.append("  <li>");
          tmpNavigator.append("   <label id='firstpage'>최신목록</label>");
          tmpNavigator.append("  </li>");
          tmpNavigator.append("   <label class='mvpage' move-page-no='" + preEnd + "'>이전</label>");
          tmpNavigator.append("  </li>");
      }
      
      int startPage = preEnd+1;
      
      int endPage = preEnd+pageSize;
      if(endPage > totalPageCount) {
          endPage = totalPageCount;
      }
      
      for (int i = startPage; i <= endPage; i++) {
          if (pageNo == i) {
              tmpNavigator.append(" <li class='paging-active'><label>" + i + "</label></li>");
          } else {
              tmpNavigator.append("<li><label class='mvpage' move-page-no='"+ i + "'>" + i + "</label></li>");
          }
      }
      
      if (this.isNowEnd()) {
          tmpNavigator.append("<li><label>다음</label></li>");
          tmpNavigator.append("<li><label>끝목록</label></li>");
      } else {
          tmpNavigator.append("<li><label class='mvpage' move-page-no='"+ (endPage+1) + "'>다음</label></li>");
          tmpNavigator.append("<li>");
          tmpNavigator.append("<label class='mvpage' move-page-no='"+ totalPageCount + "'>끝목록</label>");
          tmpNavigator.append("</li>");
      }
      tmpNavigator.append("</ul>");
      this.navigator = tmpNavigator.toString();
  }
  
}

