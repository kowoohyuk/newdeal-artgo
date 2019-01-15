function check() {
  var id = $("#id");
  var phone = $("#phone");
  if (id.val() == "") {
    alert("아이디를 입력하세요");
    id.focus();
    return false;
  }
  if (phone.val() == "") {
    alert("휴대폰번호를 입력하세요");
    phone.focus();
    return false;
  }
  return true;
}
$("#btnBack").click(function(){
  location.href = "/member/login.do";
});
