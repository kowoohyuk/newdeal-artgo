<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link href="/resources/base/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/artgo/css/ticket-buy.css" rel="stylesheet">
    <link href="/resources/artgo/css/ticket-contents.css" rel="stylesheet">
</head>
<body>
  <div id="container" class="">
    <div class="inner">
      <ul class="rank_bx">
        <li><strong>집계기간</strong>
          <p>
            <span class="color_green">2019년 01월 11일 (금) ~ 13:53 현재</span> (1시간
            단위로 업데이트 됩니다) <br> 당일 오전의 경우 판매 비중이 낮으므로 오전 10:30 이전까지는 전일
            24시간의 집계 현황을 알려드립니다.
          </p></li>
        <li><strong>집계대상</strong>
          <p>
            <span class="color_black">티켓링크 인터넷예매, 모바일웹예매, 모바일앱예매, 전화예매</span>
            (결제 완료/예매 매수 기준)
          </p></li>
      </ul>
      <!-- 집계결과 컨텐츠 -->
      <div class="rank_con">
        <!-- [D] 활성상태일 때 .on 추가입니다. -->

        <!-- 집계결과 -->
        <div class="rslt_bx">
          <!-- 버튼 -->
          <!-- // 버튼 -->
          <!-- 랭킹 테이블 -->
          <div class="basic_tbl rank_tbl">
            <table>
              <thead>
                <tr>
                  <th scope="col">공연정보</th>
                  <th scope="col" colspan="2">제목</th>
                  <th scope="col">전시일정</th>
                  <th scope="col">장소</th>
                  <th scope="col">예매하기</th>
                </tr>
              </thead>
              <tbody>
              </tbody>
                <tr> 
                  <td class="img_box">
	                  <a class="detail_link" href="ticketView.do">
	                   <img src="#" width="100px" height="122px" alt="공연 포스터">
	                  </a>
                  </td>
                      
                  <td class="tl tx">
                  <a class="detail_link" href="ticketView.do">김건모 25th Anniversary Tour-울산</a></td>
                  <td>
                  <!-- 범위 잡기 위한 td -->       
                  </td>
                  <td class="tl ff_tahoma">2019.03.30 ~ 2019.03.30</td>
                  <td class="tl desc_vt">울산동천체육관</td>
                 <td>
                    <div style="display: block;" class="btn_ticketing_type">
                      <div class="btn_table">
                        <div class="box_txt" id="box_tkt_txt"></div>
                        <div class="box_btn">
                          <button class="button btColorGreen"
                            onclick="javascript:simpleReservation('202895','PT0002')">
                            <span class="btSizeL">예매하기</span>
                          </button>
                        </div>
                      </div>
                    </div>
                  </td>
                </tr>
                <tr>
                  
                  <td class="img_box">
	                  <a class="detail_link" href="javascript:;">
	                   <img src="#" width="100px" height="122px" alt="공연 포스터">
	                  </a>
                  </td>
                      
                  <td class="tl tx">
                  <a class="detail_link" href="javascript:;">김건모 25th Anniversary Tour-울산</a></td>
                  <td>
                  <!-- 범위 잡기 위한 td -->       
                  </td>
                  <td class="tl ff_tahoma">2019.03.30 ~ 2019.03.30</td>
                  <td class="tl desc_vt">울산동천체육관</td>
                  <td>
                    <div style="display: block;" class="btn_ticketing_type">
                      <div class="btn_table">
                        <div class="box_txt" id="box_tkt_txt"></div>
                        <div class="box_btn">
                          <button class="button btColorGreen"
                            onclick="javascript:simpleReservation('202895','PT0002')">
                            <span class="btSizeL">예매하기</span>
                          </button>
                        </div>
                      </div>
                    </div>
                  </td>
                </tr>
            </table>
          </div>
          <!-- //랭킹 테이블 -->
        </div>
        <!-- //집계결과 -->
      </div>
      <!-- //집계결과 컨텐츠 -->
    </div>
  </div>
</body>
</html>