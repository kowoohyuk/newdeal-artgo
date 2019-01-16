<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link href="/resources/base/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/artgo/css/ticket-buy.css" rel="stylesheet">
    <link href="/resources/artgo/css/ticket-contents.css" rel="stylesheet">
    <link href="/resources/artgo/css/ticket-star.css" rel="stylesheet">
<meta charset="UTF-8">
<title>buy_view</title>
</head>
<body>
<div id="wrap" class="subwrap">
    <div id="container">
      <input type="hidden" id="productId" value="26283"> <input
        type="hidden" id="productName" value="피에르 쥘: 더 보헤미안 展"> <input
        type="hidden" id="adultYn" value="true">
      <div class="inner">
        <p class="location_path"></p>
        <div class="detail_box_top ">
          <div class="bx_title">
            <div class="title">피에르 쥘: 더 보헤미안 展</div>
          </div>
          <div class="detail_info">
            <div class="bx_thumb">
              <span class="bx_img"> <img src="" alt="대표이미지" width="314"
                height="382">
              </span>
            </div>

            <div class="etc_info">
              <div class="bx_dummy">
                <em class="info_tit">장소</em> <span class="txt">K 현대미술관</span>
              </div>
              <div class="bx_dummy">
                <em class="info_tit">기간</em> <span class="txt">2018.12.21~2019.03.17</span>
              </div>
   

              <div class="bx_dummy include_layer border_type">

              </div>
            </div>
          </div>
          <div class="">
            <!-- FE 지원 form 시작 -->
            <div class="detail_info_right noinfo" id="calendar">
              <div class="noinfo_txt">
                해당상품은 날짜와 회차선택이<br> 없는 상품입니다.
              </div>
                                 <div style="display: block;" class="btn_ticketing_type">
                      <div class="btn_table">
                        <div class="box_txt" id="box_tkt_txt"></div>
                        <div class="box_btn" style="text-align:center; margin-top:5px;">
                          <button class="button btColorGreen"
                            onclick="popReserveDialog();">
                            <span class="btSizeL">예매하기</span>
                          </button>
                        </div>
                      </div>
                    </div>
            </div>
            <!-- FE 지원 form 종료 -->
          </div>
        </div>
        <!-- 하단 탭 출력 -->
        <div class="detail_box_bot">
          <div class="detailbox_bot_left ui-tabs ui-widget ui-widget-content ui-corner-all" id="tabs">
            <ul class="tab_policy" role="tablist">

              <li class="lst on"><a href="#" class="link_policy" role="tab">상세정보</a></li>
              <!-- 활성화 시 on 클래스 추가 -->
              <li class=""><a href="#" class="link_policy" role="tab">관람후기
                  이용약관</a></li>
              <li class=""><a href="#" class="link_policy"
                class="link_policy" role="tab">공연정보</a></li>
              <li class=""><a href="#" class="link_policy" role="tab">티켓수령
                  취소 / 환불</a></li>
            </ul>
            
            <!-- 상세정보 -->
            <div id="tabs-1" aria-labelledby="ui-id-6"
              class="ui-tabs-panel ui-widget-content ui-corner-bottom"
              role="tabpanel" aria-hidden="false" style="display: block;">
              <div class="detail_cont">

                <strong>[공연시간 정보]</strong>
                <div class="contents">
                  <p>
                    <b>2018년 12월 21일(금) ~ 2019년 03월 17일(일)</b>
                  </p>
                  <p>화~일 10시~ 19(입장마감 18시)</p>
                  <p>*월요일 휴관(12월 31일(월) 정상운영)</p>
                  <p>*도슨트 : 목 ~일 14시, 16시</p>
                </div>

                <strong>[공지사항]</strong>
                <div class="contents">
                  <p>* 예매오픈 : 2018년 11월 28일(수) 11시</p>
                  <p>* 예매마감 : 2019년 03월 16일(토) 18시까지</p>
                  <p>
                    <b>* 본 상품은 기간권티켓 판매 상품으로 구입 후 전시기간 동안 1회 관람가능합니다.</b>
                  </p>
                </div>

                <strong>[상세정보]</strong>
                <div class="contents">
                  <img src="#.jpg" title="p_info12281441_01.jpg"><br
                    style="clear: both;">
                  <p>&nbsp;</p>
                </div>

                <strong>[상품관련정보]</strong>
                <div class="contents">
                  <table class="detail_info_tbl">
                    <caption>상품관련정보</caption>
                    <colgroup>
                      <col style="width: 122px">
                      <col style="width: 225px;">
                      <col style="width: 80px">
                      <col>
                    </colgroup>
                    <tbody>
                      <tr>
                        <th scope="row">주최/기획</th>
                        <td>K현대미술관</td>
                        <th scope="row">고객문의</th>
                        <td>02-2138-0952</td>
                      </tr>
                      <tr>
                        <th scope="row">공연시간</th>
                        <td></td>
                        <th scope="row">관람등급</th>
                        <td>청소년관람가</td>
                      </tr>
                      <tr>
                        <th scope="row">작가/출연자</th>
                        <td></td>
                        <th scope="row">공연장소</th>
                        <td>K 현대미술관</td>
                      </tr>
                      <tr>
                        <th scope="row">예매수수료</th>
                        <td>0원</td>
                        <th scope="row">배송료</th>
                        <td>현장수령</td>
                      </tr>
                      <tr>
                        <th scope="row">유효기간/이용조건</th>
                        <td colspan="3">2018.12.21 ~ 2019.03.17 이용 가능</td>
                      </tr>
                      <tr>
                        <th scope="row">예매취소조건</th>
                        <td colspan="3"><span
                          style="color: rgb(118, 118, 118); letter-spacing: -1px; font-family: '돋움', dotum, sans-serif; font-size: 11px;">
                            취소일자에 따라 아래와 같이 취소수수료가 부과됩니다. 예매일 기준보다 관람일 기준이 우선 적용됩니다.<br>
                            단, 예매 당일 밤 12시 이전 취소 시에는 취소수수료가 없으며 예매수수료도 환불됩니다. (취소기한 내에
                            한함)<br> <br> 예매후 7일 이내 : 취소수수료 없음<br> 예매후
                            8일 ~ 관람일 10일 전 : 뮤지컬/콘서트/클래식 등 공연 장당 4,000원, 연극/전시 등 입장권
                            장당 2,000원<br> (단, 최대 티켓금액의 10% 이내)<br> 관람일 9일 전
                            ~ 7일 전 : 티켓금액의 10%<br> 관람일 6일 전 ~ 3일 전 : 티켓금액의 20%<br>
                            관람일 2일 전 ~ 1일 전 : 티켓금액의 30%<br> 공연 취소 시 : 없음<br>
                        </span></td>
                      </tr>
                      <tr>
                        <th scope="row">취소환불방법</th>
                        <td colspan="3"><span
                          style="color: rgb(118, 118, 118); letter-spacing: -1px; font-family: '돋움', dotum, sans-serif; font-size: 11px;">
                            <strike>​</strike>'마이페이지 &gt; 예매/취소내역'에서 취소마감시간 이내에 취소할 수
                            있습니다. <br> 단, 티켓이 배송된 이후에는 인터넷 취소가 불가하며 취소마감 시간 이전에
                            티켓이 아래 주소로 반송되어야 합니다.<br> - 주소 : 13487, 경기도 성남시 분당구
                            대왕판교로645번길 16 NHN엔터테인먼트 플레이뮤지엄<br> - 받는사람 : NHN 티켓링크
                            환불담당자<br> - 연락처: 1588-7890<br> 취소수수료는 도착일자 기준으로
                            부과되며 배송료는 환불되지 않습니다.<br>
                        </span></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            
            <!-- 관람후기 이용약관 -->
            <div id="tabs-2" aria-labelledby="reviewTap"
              class="ui-tabs-panel ui-widget-content ui-corner-bottom"
              role="tabpanel" aria-hidden="true" style="display: none;">

              <div class="detail_cont detail_cont_v2">
                <div class="title_wrap">
                  <strong class="title title21">네티즌 별점 및 후기</strong> <a
                    href="javascript:;" onclick="popupBoardRule();"
                    class="btn_text2">게시판 운영규정<em></em></a>
                </div>
                <p class="guide_txt">
                  네티즌 별점 및 후기 게시판에 티켓 양도와 매매성 등 글과 같이 게시판 성격에 벗어난 글을 게재할 경우 사전 통보
                  없이 삭제될 수 있습니다.<br> 티켓 양도 및 매매의 경우 전화번호, 이메일 등의 개인정보가 악용될
                  소지가 있으므로 게재를 삼가 주시기 바랍니다.<br> 운영 규정을 지속적으로 어기는 게시글을 게재할 경우
                  티켓링크 게시판 이용이 제한될 수 있습니다.
                </p>

                <div class="star_review" id="star_review">
                  <fieldset>
                    <legend>네티즌 별점 및 후기 작성</legend>

                    <div class="star_rating">
                      <strong class="blind">평점선택</strong>
                      <div class="starrating-background" id="star_rating"
                        style="float: left;">
                        <span style="width: 0px;"><em></em></span>
                      </div>
                      <span class="blind">평점</span> <span class="star_score"
                        id="score" name="rating"></span>
                    </div>

                    <dl class="star_average">
                      <dt>현재 평균 별점</dt>
                      <dd class="grade" id="ratingAverage">점</dd>
                      <dd class="grade_star">
                        <span class="star_gauge" id="ratingAverageStar"
                          style="width: 0%"></span>
                      </dd>
                      <dd class="bar">|</dd>
                      <dt>참여인원</dt>
                      <dd class="person" id="countReviewe">0명</dd>
                    </dl>
                    <div class="write_review">
                      <textarea title="후기 작성하기" id="reviewContent"
                        name="reviewContent" onclick="callMemberCommonCheck();"
                        onkeyup="checkTextLength(this);"
                        onpaste="checkTextLength(this);"
                        onchange="checkTextLength(this);"
                        style="height: 25px; resize: none;" maxlength="3000"
                        placeholder="주민번호, 전화번호, 이메일 등 개인정보를 남기면 타인에 의해 악용될 소지가 있습니다."></textarea>
                      <a href="javascript:;" id="reviewInsertButton"
                        onclick="insertProductReview();" class="btn btn_reply">댓글입력</a>
                    </div>
                  </fieldset>
                  <div id="star_review_errors"></div>
                </div>

                <div class="title_wrap mgt40">
                  <strong class="title title22 fl">후기보기</strong> <a
                    href="javascript:;" class="btn_text3 fr"
                    id="displayAllReviewBtn" onclick="displayAllreview();"
                    style="visibility: hidden;">전체후기보기</a>
                </div>
                <div class="review_list">
                  <ul id="reviewUl" style="word-break: break-all;">
                    <li class="no_data">등록된 후기가 없습니다.</li>
                  </ul>
                </div>

                <div id="pagination" class="paging">
                  <a href="javascript:goPage('1')" class="first">맨앞</a><a
                    href="javascript:goPage('1')" class="prev">이전</a><strong>1</strong><a
                    href="javascript:goPage('1')" class="next">다음</a><a
                    href="javascript:goPage('1')" class="end">맨뒤</a>
                </div>

                <div class="list_search">
                  <div class="selectbox selectbox_v2" id="review_search_div">
                    <a href="javascript:;" id="review_search_option"
                      onclick="openReviewSelectList();" class="select">아이디</a> <input
                      type="hidden" id="review_search_type" value="memberId">
                    <ul class="select_list" id="review_select_list"
                      style="display: none;">
                      <li><a href="javascript:;"
                        onclick="closeReviewSelectList(this)">아이디</a></li>
                      <li><a href="javascript:;"
                        onclick="closeReviewSelectList(this)">내용</a></li>
                    </ul>
                  </div>
                  <div class="input_field">
                    <input type="text" title="검색어 입력" id="review_search_key">
                    <a href="javascript:;" onclick="searchReview();"
                      class="btn_search">찾기</a>
                  </div>
                </div>
              </div>
            </div>

            <!-- 공연정보 -->
            <div id="tabs-4" aria-labelledby="placeTap"
              class="ui-tabs-panel ui-widget-content ui-corner-bottom"
              role="tabpanel" aria-hidden="true" style="display: none;">
              <div class="detail_cont">
                <strong>[공연장 정보]</strong>
                <div class="contents">
                  장소 : K 현대미술관<br> 주소 : 서울특별시 강남구 선릉로 807K 현대미술관<br>
                  대표번호 : <span id="phoneNumber">1588-7890</span>
                </div>
              </div>
            </div>
            
            <!-- 티켓 수령 취소 / 환불 -->
            <div id="tabs-5" aria-labelledby="ui-id-7"
              class="ui-tabs-panel ui-widget-content ui-corner-bottom"
              role="tabpanel" aria-hidden="true" style="display: none;">
              <div class="detail_cont">
                <strong>[티켓 수령 안내]</strong>
                <div class="contents">
                  <p>
                    <strong><span style="font-family: 돋움, dotum;">1)
                        일반배송</span></strong><br> <span style="font-family: 돋움, dotum;">
                      티켓 예매 확인 후 인편으로 배송되며, 예매 후 10일 이내에 수령이 가능합니다.</span><br> <span
                      style="font-family: 돋움, dotum;">일괄 배송 상품의 경우 고지된 배송일
                      이후 10일 이내에 수령이 가능합니다.</span><br> <span
                      style="font-family: 돋움, dotum;">배송비는 행사에
                      따라&nbsp;상이합니다. 상품 상세 페이지 안내에서 확인할 수 있습니다. </span><br> <span
                      style="font-family: 돋움, dotum;">행사 또는 행사일에 따라 우편배송 방법의
                      선택이 제한될 수 있습니다.</span>
                  </p>
                  <p>
                    <span style="font-family: 나눔고딕, NanumGothic, sans-serif;"></span><br>
                    <strong><span style="font-family: 돋움, dotum;">2)
                        현장수령</span></strong><br> <span style="font-family: 돋움, dotum;">
                      행사당일 공연 시작 1시간~30분 전까지 행사장 매표소에서 수령하실 수 있습니다.</span><br> <span
                      style="font-family: 돋움, dotum;">예매번호, 예매하신 분의 신분증(필수),
                      예매확인서(프린트 또는, 티켓링크 앱 예매확인 페이지)를&nbsp;매표소에 제시하시면 편리하게 티켓을 수령하실
                      수 있습니다.</span><br> <span style="font-family: 돋움, dotum;">행사
                      또는 행사일에 따라 현장수령 방법의 선택이 제한될 수 있습니다.</span><br> <span
                      style="font-family: 돋움, dotum;">수령장소는 각 행사장 매표소이며,
                      매표소의 예매자 전용 창구를 이용하시면 됩니다.&nbsp;</span>
                  </p>
                </div>
                <strong>[예매 취소 안내]</strong>
                <div class="contents">
                  <strong>예매 취소 시 주의사항</strong><br> 티켓 예매 후 7일 이내에 취소 시,
                  취소수수료가 없습니다. <br>단, 예매 후 7일 이내라도 취소 시점이 공연일로부터 10일 이내라면 그에
                  해당하는 취소수수료가 부과됩니다.<br>예매 당일 자정(12:00) 전에 취소할 경우 예매 수수료가
                  환불되며, 그 이후에는 환불되지 않습니다.<br>예매티켓 취소는 아래 안내된 취소가능일 이내에만 할 수
                  있습니다.
                  <table class="detail_info_tbl mgt15">
                    <caption>예매 취소 안내</caption>
                    <colgroup>
                      <col style="width: 180px;">
                      <col style="width: 130px;">
                      <col>
                    </colgroup>
                    <thead>
                      <tr>
                        <th rowspan="1" colspan="1" scope="col">행사일</th>
                        <th rowspan="1" colspan="1" scope="col">배송방법</th>
                        <th rowspan="1" colspan="1" scope="col">취소가능시간</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td rowspan="2">평일/토요일</td>
                        <td>현장수령</td>
                        <td>행사 전 일, 17:00까지</td>
                      </tr>
                      <tr>
                        <td>인편배송</td>
                        <td>행사 전 일, 17:00까지 반송하여 도착하는 티켓</td>
                      </tr>
                      <tr>
                        <td rowspan="2">일요일</td>
                        <td>현장수령</td>
                        <td>행사 전 토요일, 17:00까지</td>
                      </tr>
                      <tr>
                        <td>인편배송</td>
                        <td>행사 전 토요일, 11:00까지 반송하여 도착하는 티켓</td>
                      </tr>
                      <tr>
                        <td rowspan="2">행사전일 : 평일<br>행사일 : 연휴기간/연휴다음날
                        </td>
                        <td>현장수령</td>
                        <td>행사 전 일, 17:00까지</td>
                      </tr>
                      <tr>
                        <td>인편배송</td>
                        <td>행사 전 일, 17:00까지 반송하여 도착하는 티켓</td>
                      </tr>
                      <tr>
                        <td rowspan="2">행사전일 : 토요일<br> 행사일 : 연휴기간/연휴다음날
                        </td>
                        <td>현장수령</td>
                        <td>연휴 전 토요일, 17:00까지</td>
                      </tr>
                      <tr>
                        <td>인편배송</td>
                        <td>연휴 전 토요일, 11:00까지 반송하여 도착하는 티켓</td>
                      </tr>
                    </tbody>
                  </table>
                  <p>단, 롯데콘서트홀 공연의 경우 관람일 하루 전 18:00까지 취소 가능하며 토/일/월 공연의 경우
                    금요일 18:00까지 취소 가능합니다.&nbsp;</p>
                  <p>&nbsp;</p>
                  <p>
                    구입하신 예매채널을 통해서만 취소가 가능합니다. (티켓링크에서는 티켓링크에서 예매한 티켓만 취소 가능합니다.)
                    <br>구입하신 티켓의 일부분 취소, 날짜/시간/좌석등급/좌석위치 변경은 불가능합니다. (관련 상담 :
                    티켓링크 콜센터 1588-7890)<br>반송 시, 고객님의 예매번호와 연락처, 반송사유, 환불계좌,
                    예금주를 적으셔서 티켓과 동봉해 보내주시면 정확한 처리에<br> 도움이 됩니다.<br>취소
                    가능 시간이 공연일까지 3일 이상 남지 않았을 경우 특급우편을 이용하거나 콜센터 1588-7890으로 문의
                    바랍니다.<br>발송 받으신 티켓이 분실되거나 훼손되었을 경우 취소 및 변경이 절대 불가합니다.<br>공연상의
                    문제로 환불을 받으실 경우 별도의 수수료를 공제하지 않으며, 환불 주체가 티켓링크가 아닌 행사 주최사가 <br>될
                    수 있습니다.
                  </p>
                  <p>
                    <strong>취소수수료 안내</strong><br>무통장 입금으로 결제하신 경우, 취소수수료와
                    송금수수료 500원을 제외한 나머지 금액이 고객 환불 계좌에 입금됩니다.<br>환불은행, 계좌번호,
                    예금주는 본인명의로 정확히 입력 부탁드리며, 취소처리를 접수한 날로부터 3~5일 이내에 환불 받으실 수
                    있습니다.<br> 또한, 타인의 계좌를 이용하거나 명의를 도용했을 경우 서비스 이용이 제한될 수
                    있습니다.<br>신용카드로 결제 시, 취소수수료 및 우편 발송비를 재승인 후 기존 승인금액을 취소
                    처리합니다.
                  </p>
                  <table class="detail_info_tbl mgt15">
                    <caption></caption>
                    <colgroup>
                      <col style="width: 86px;">
                      <col style="width: 163px;">
                      <col style="width: 180px;">
                      <col>
                    </colgroup>
                    <thead>
                      <tr>
                        <th rowspan="1" colspan="2" scope="col">행사일</th>
                        <th rowspan="1" colspan="1" scope="col">취소수수료 (인터넷,
                          콜센터)</th>
                        <th rowspan="1" colspan="1" scope="col">비고</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th rowspan="5" colspan="1">공연 / 전시</th>
                        <td>예매후 7일 이내 / 예매당일</td>
                        <td>없음</td>
                        <td rowspan="7"><p>
                            예매 당일에 취소하는 경우 이외에는<br> 예매수수료가 환불되지 않음 (약관 28조 의거)
                          </p>
                          <p>
                            <br>예매 후 7일 이내라도 취소 시점이 공연일로부터<br>10일 이내라면 그에
                            해당하는 취소수수료가 부과됨<br>(약관 32조 의거)
                          </p></td>
                      </tr>
                      <tr>
                        <td>예매후 8일 ~ 관람일 10일 전</td>
                        <td>뮤지컬, 콘서트, 클래식 등 공연권<br>: 장당 4,000원<br>
                          연극, 전시 등 입장권 <br> 장당 2,000원<br>* 티켓금액의 10% 이내
                        </td>
                      </tr>
                      <tr>
                        <td>관람일 9일 전 ~ 7일 전</td>
                        <td>티켓금액의 10%</td>
                      </tr>
                      <tr>
                        <td>관람일 6일 전 ~ 3일 전</td>
                        <td>티켓금액의 20%</td>
                      </tr>
                      <tr>
                        <td>관람일 2일 전 ~ 1일 전</td>
                        <td>티켓금액의 30%</td>
                      </tr>
                      <tr>
                        <th rowspan="1" colspan="2" scope="row">스포츠</th>
                        <td>티켓 구매 금액의 10%</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <strong>[티켓 환불 안내]</strong>
                <div class="contents">
                  <span class="fbold">신용카드</span> : 취소 시 승인이 취소됩니다.<br> <span
                    class="fbold">무통장입금</span> : 인터넷 또는 콜센터(1588-7890)로 접수된 고객님의
                  환불계좌로 입금해드립니다.
                </div>
                <strong>[기타 안내]</strong>
                <div class="contents">
                  <p>
                    <span class="fbold"><strong>입금 계좌 번호</strong></span>
                  </p>
                  <p>
                    예매 완료 페이지에 별도 표시 (기록해두면 환불 시 편리합니다.)<br> <strong></strong>
                  </p>
                  <p>
                    <strong><br></strong>
                  </p>
                  <p>
                    <strong>주의사항</strong> <br>입금 계좌를 분실했을 경우 예매확인/취소 메뉴를 이용해서
                    각 예매건에 대한 입금계좌를 확인하시기 바랍니다. <br>1일 1건 이상 무통장 입금으로 티켓을 예매한
                    경우, 각각의 예매건에 대한 입금계좌가 다르게 부여됩니다. <br>예매금액과 입금금액이 일치하지 않을
                    경우 입금 오류가 발생하여 입금처리 되지 않습니다. 예매 시 예매금액을 꼭 확인하세요. <br>예매당일을
                    포함하여 그 다음날 23:59(주말 및 공휴일 포함)까지 지정된 계좌로 입금하셔야만 예매가 유효합니다.
                  </p>
                  <p>&nbsp;</p>
                  <p>
                    <span style="line-height: 1.5;">은행에 따라 23:30에 온라인 입금이
                      마감되는 경우가 있으니 참고 부탁드립니다.</span> (단, 외환은행, 수협은 22:40에 온라인 입금이 마감됩니다.)
                  </p>
                  <p>&nbsp;</p>
                  <p>
                    무통장 입금의 경우 입금 확인 및 고객 확인을 위한 기간이 필요하므로 이용기간이 제한됩니다. 양해 부탁
                    드립니다. <br>예매 당일을 포함하여 그 다음날 23:59(주말 및 공휴일 포함)까지 입금하지 않으실
                    경우 별도의 통보 없이 예매가 취소됩니다.
                  </p>
                </div>
                <strong>[예매수수료 안내]</strong>
                <div class="contents">
                  티켓링크 인터넷, 콜센터를 통한 티켓 예매 시, 소정의 수수료가 부과됩니다. (시행일 2002.3.4)<br>
                  <br>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
    <script type="text/javascript" src="/resources/artgo/js/jindo.js"></script>
    <script type="text/javascript" src="/resources/artgo/js/jindo.Component.js"></script>
    <script type="text/javascript" src="/resources/artgo/js/jindo.UIComponent.js"></script>
    <script type="text/javascript" src="/resources/artgo/js/jindo.StarRating.js"></script>
</body>
</html>