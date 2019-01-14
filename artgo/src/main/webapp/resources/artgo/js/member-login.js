$(function(){
  if(location.search != ""){
    alert("아이디 혹은 비밀번호가 일치하지 않습니다.");
  }
  
});
//<![CDATA[
//사용할 앱의 JavaScript 키를 설정해 주세요.
Kakao.init('7733d2fd81a122a372226b726f89ef71');
//카카오 로그인 버튼을 생성합니다.

function loginWithKakao() {
// 로그인 창을 띄웁니다.
Kakao.Auth.login({
 success: function(authObj) {
   Kakao.API.request({
     url: '/v1/user/me',
     success: function(res) {
       //alert(JSON.stringify(res)); //<---- kakao.api.request 에서 불러온 결과값 json형태로 출력
       //alert(JSON.stringify(authObj)); //<----Kakao.Auth.createLoginButton에서 불러온 결과값 json형태로 출력
       //console.log(res.id);//<---- 콘솔 로그에 id 정보 출력(id는 res안에 있기 때문에  res.id 로 불러온다)
       //console.log(res.kaccount_email);//<---- 콘솔 로그에 email 정보 출력 (어딨는지 알겠죠?)
       //console.log(res.properties['nickname']);//<---- 콘솔 로그에 닉네임 출력(properties에 있는 nickname 접근 
       // res.properties.nickname으로도 접근 가능 )
       console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력
       
       var parameter = JSON.stringify({'nickname' : res.properties['nickname'], 'id' : res.id});
       $.ajax({
         url : '/member/kakaoLogin.do',
         type : 'POST',
         contentType : 'application/json;charset=UTF-8',
         dataType : 'json',
         data : parameter,
         success : function(data) {
           var result = data.result;
           if(result == "fail"){
             alert("카카오 계정 로그인에 실패하였습니다. 잠시후 다시 시도해주세요.");
           }else{
             location.href = "/main.do";
           }
         }
       });
     }
   })
 },
 fail: function(err) {
   alert(JSON.stringify(err));
 }
});
};
//]]>
