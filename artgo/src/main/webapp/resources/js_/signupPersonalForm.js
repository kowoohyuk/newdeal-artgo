(function () {

	var event = function(){
		// placeholder
		$(".white_list_line li span").click(function(){
			$(this).parent().find("input").focus();
		});

		$(".white_list_line li input").focus(function(){
			$(this).parent().find("span").css("display", "none");
		}).blur(function(){
			$(this).parent().find("span").css("display", "block");

			var putTxtLangth = $(this).val().length;

			if( putTxtLangth > 0 ) {
				$(this).parent().find("span").css("display", "none");
			}else{
				$(this).parent().find("span").css("display", "block");
			}
		});

		// 약관동의 펼침 & 닫힘
		$(".mem_clause_bar .mem_clause_tt a").click(function(e){
			e.preventDefault();
			var clauseBox = $("#clauseBox");
			var clauseBoxDisplay = $("#clauseBox").css("display");

			if ( clauseBoxDisplay == "none" ) {
				clauseBox.css("display", "block");
				$(this).parent().addClass("on");
			}else{
				clauseBox.css("display", "none");
				$(this).parent().removeClass("on");
			}
		});
		
		//약관동의 space bar 제어
		$(".mem_clause_bar .mem_clause_tt a").keydown(function(e){
	        if(e.keyCode == 13){
	           	return false;
	        }
			if(e.keyCode == 32){
				e.preventDefault();
	           	$(this).click();
	        }
	    });

		$(".check_cus_zone label input").change(function(){
			var label = $(this).parent();
			var thisPut = $(this);
			var checkform = $(this).is(":checked");

			if(!label.hasClass("disable")){				
				if (checkform) {
					label.addClass("on");
					thisPut.prop("checked", true).val("Y");
				}else{
					label.removeClass("on");
					thisPut.prop("checked", false).val("N");
				}
			}
		});
		
		// 전체체크 처리
		$(".mem_clause_bar .check_cus_zone label").click(function(){
			var dtCheckform = $(this).children("input").is(":checked");
			var ddLabel = $(".mem_clause_con ul li .clause_con_tt label");
			var ddPut = $(ddLabel).children("input");

			var itemPut = $(".check_box_area").find("input");
			var itemLabel = $(".check_box_area").find("label");

			if ( dtCheckform == false ) {
				ddLabel.removeClass("on");
				ddPut.prop("checked", false).val("N");

				itemLabel.removeClass("on");
				itemPut.prop("checked", false).val("N");
			}else{
				ddLabel.addClass("on");
				ddPut.prop("checked", true).val("Y");

				itemLabel.addClass("on");
				itemPut.prop("checked", true).val("Y");
			}
		});

		// 하위전체 체크 처리시 상단 전체체크
		$(".mem_clause_con ul li .clause_con_tt label").click(function(){
			var memCheckBoxTotal = $(".mem_clause_bar .check_cus_zone label");
			var memCheckBox = $(".mem_clause_con ul li .clause_con_tt label");
			var memCheckBoxNum = $(memCheckBox).children("input").length;
			var memCheckNum = $(memCheckBox).children("input:checked").length;

			if ( memCheckBoxNum == memCheckNum ) {
				memCheckBoxTotal.addClass("on");
				memCheckBoxTotal.children("input").prop("checked", true);
			}else{
				memCheckBoxTotal.removeClass("on");
				memCheckBoxTotal.children("input").prop("checked", false);
			}
		});
		$(".white_list_line_check_zone.check_box_area label").click(function(){
			var totalCheck = $(".check_label");
			var listLabel = $(".white_list_line_check_zone.check_box_area label");
			var listCheckNum = listLabel.children("input").length;
			var listCheckingNum = listLabel.children("input:checked").length;

			if ( listCheckNum == listCheckingNum ) {
				totalCheck.addClass("on");
				totalCheck.children("input").prop("checked", true);
			}else{
				totalCheck.removeClass("on");
				totalCheck.children("input").prop("checked", false);
			}
		});

		// select customize
		$(".select-script select").focus(function(){
			$(this).parent(".select-script").addClass("impor");

			var select = $('.select-script select');
			select.change(function(){
				var select_name = $(this).children('option:selected').text();
				$(this).siblings("label").text(select_name);
			});
		}).blur(function(){
			$(this).parent(".select-script").removeClass("impor");
		});
		
		// tab menu hover 이벤트
		var $tabMenu = $(".mem_join_tab ul li a")
		$tabMenu.hover(function(){
			$(this).find("p").css("display", "block");

			var tagP = $(this).children().is("p");
			if(!tagP) {
				$(".mem_join_tab ul li:first-child").addClass("on");
			}
		}, function(){
			$(this).find("p").css("display", "none");
			if(!$(".mem_join_tab ul li:first-child").hasClass('personal')) $(".mem_join_tab ul li:first-child").removeClass("on");
		})
		
		// itembay 인증팝업
		if(memberInfo.signType == 'itembay' && authCheck == 'N'){
			tb.Auth.mobile('/web/signup/signupStart/signupPersonalResponse');
		}else if(memberInfo.signType == 'itembay' && authCheck == 'Y'){
			itembayRequest();
		}
		
		// validations
		$('body').on('blur', 'input', function(e) {
			var target = $(e.target);
			var name = target.attr('name');
			
			//아이디
			if(name == 'MEMBER_ID'){
				if(!tb.Valid.check(target.val(), 'required', true)) { target.parent().removeClass('on').children('p').removeClass('on').text(); return false; }
				if(!tb.Valid.check(target.val(), 'min-length', 4) || !tb.Valid.check(target.val(), 'max-length', 12)) { target.parent().removeClass('on').children('p').addClass('on warning').text('4-12자 이내 영문(소문자)/숫자로 입력하세요.'); return false; }
				if(!tb.Valid.check(target.val(), 'allow-char', ['alphabet-lower', 'numeric'])) { target.parent().removeClass('on').children('p').addClass('on warning').text('아이디는 4~12자 이내 영문(소문자)/숫자로 입력해주세요'); return false; }
				
				tb.Ajax.get({
	                url: '/web/signup/duplicateIdCheck',
	                data: {
	                    'MEMBER_ID': target.val()
	                }
	            }).done(function (data) {
	                if (data.META.RETURN_CODE < 0) {
	                	var text = '이미 사용중인 ID입니다. 다른 ID를 입력 해 주세요.';
	                	target.parent().removeClass('on').children('p').addClass('on warning').text(text);
	                	$("#ID_DUP_YN").val('N');
	                    return;
	                }
	                var text = '사용 가능한 아이디 입니다.';
	                target.parent().addClass('on').children('p').removeClass('warning').addClass('on').text(text);
	                $("#ID_DUP_YN").val('Y');
	            }).fail(function (jqXHR, textStatus, errorThrown) {
	            	var text = '이미 사용중인 ID입니다. 다른 ID를 입력 해 주세요.';
                	target.parent().removeClass('on').children('p').addClass('on warning').text(text);
                	$("#ID_DUP_YN").val('N');
	            });
			}
			
			//비밀번호
			if(name == 'MEMBER_PW'){
				var text = '사용 가능한 비밀번호 입니다.';
				if(!tb.Valid.check(target.val(), 'required', true)) { target.parent().removeClass('on').children('p').addClass('on warning').text('비밀번호를 입력하세요.'); return false; }
				if(!tb.Valid.check(target.val(), 'min-length', 6) || !tb.Valid.check(target.val(), 'max-length', 20)) { target.parent().removeClass('on').children('p').addClass('on warning').text('비밀번호는 6~20자 이내로 입력하셔야 합니다.'); return false; }
				if((!tb.Valid.check(target.val(), 'regexp', /[0-9]/g) || !tb.Valid.check(target.val(), 'regexp', /[a-z]/gi)) &&
					(!tb.Valid.check(target.val(), 'regexp', /[a-z]/gi) || !tb.Valid.check(target.val(), 'regexp', /[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi)) &&
					(!tb.Valid.check(target.val(), 'regexp', /[0-9]/g) || !tb.Valid.check(target.val(), 'regexp', /[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi))) { target.parent().removeClass('on').children('p').addClass('on warning').text('비밀번호는 영문 숫자 특수문자 2가지 이상 6~20자 이내로 입력하세요.'); return false; }
				if(tb.Valid.check(target.val(), 'regexp', /(\w)\1\1/)) { target.parent().removeClass('on').children('p').addClass('on warning').text('비밀번호에 동일한 숫자나 문자를 연속으로 사용할 수 없습니다.');return false; }
				target.parent().addClass('on').children('p').removeClass('warning').addClass('on').text(text);
			}
			
			//비밀번호재입력
			if(name == 'pwCheck'){
				var text = '비밀번호가 일치합니다.';
				if(!tb.Valid.check(target.val(), 'required', true)) { target.parent().removeClass('on').children('p').addClass('on warning').text('비밀번호를 다시한번 입력하세요.'); return false; }
				if(target.val() != $('input[name="MEMBER_PW"]').val()) { target.parent().removeClass('on').children('p').addClass('on warning').text('비밀번호가 일치하지 않습니다.'); return false; }
				target.parent().addClass('on').children('p').removeClass('warning').addClass('on').text(text);
			}
			
			//이름
			if(name == 'MEMBER_NAME'){
				var text = '사용 가능합니다.';
				if(!tb.Valid.check(target.val().replace(/ /gi, ''), 'required', true)) { target.parent().removeClass('on').children('p').removeClass('on').text(); return false; }
				if(!tb.Valid.check(target.val(), 'max-byte', 20) || !tb.Valid.check(target.val().replace(/ /gi, ''), 'allow-char', ['alphabet', 'hangul'])) { target.parent().removeClass('on').children('p').addClass('on warning').text('이름을 정확히 입력하세요.'); return false; }
				target.parent().addClass('on').children('p').removeClass('warning').addClass('on').text(text);
				$('input[name="MEMBER_NAME"]').parent().removeClass('disable');
			}
			
			//이메일
			if(name == 'MEMBER_EMAIL'){
				var text = '사용 가능한 이메일 입니다.';
				if(!tb.Valid.check(target.val(), 'required', true)){ target.parent().removeClass('on').children('p').addClass('on warning').text('이메일 정보는 거래 및 아이디/비밀번호 찾기를 위해 꼭 필요한 정보이므로 정확하게 입력하세요.'); $('input[name="MEMBER_EMAILYN"]').parent().addClass('disable'); return false; }
				if(!tb.Valid.check(target.val(), 'email_new', true)) { target.parent().removeClass('on').children('p').addClass('on warning').text('이메일 형식이 올바르지 않습니다.'); $('input[name="MEMBER_EMAILYN"]').parent().addClass('disable'); $('input[name="MEMBER_EMAILYN"]').val('N').parent().removeClass('on'); return false; }
				target.parent().addClass('on').children('p').removeClass('warning').addClass('on').text(text);
				$('input[name="MEMBER_EMAILYN"]').parent().removeClass('disable');
			}
			
			//휴대폰
			if(name == 'MEMBER_MOBILE_NO'){
				var text = '사용 가능한 휴대폰 입니다.';
				if(!tb.Valid.check(target.val(), 'required', true)) { target.parent().removeClass('on').children('p').addClass('on warning').text('휴대폰 정보는 거래 및 아이디/비밀번호 찾기를 위해 꼭 필요한 정보이므로 정확하게 입력하세요.'); $('input[name="MEMBER_SMSYN"]').parent().addClass('disable'); return false; }
				if(!tb.Valid.check(target.val(), 'regexp', /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/)) { target.parent().removeClass('on').children('p').addClass('on warning').text('숫자만 입력(최소 10자리 이상) 할 수 있습니다'); $('input[name="MEMBER_SMSYN"]').parent().addClass('disable'); $('input[name="MEMBER_SMSYN"]').val('N').parent().removeClass('on'); return false; }
				target.parent().addClass('on').children('p').removeClass('warning').addClass('on').text(text);
				$('input[name="MEMBER_SMSYN"]').parent().removeClass('disable');
			}
		});
		
		$(document.forms.major).on('submit', function(e) {
			e.preventDefault();
			
			var validate = function(form){
				
				var elements = form.elements;
				var idDupCode = 0;
				
				if(!tb.Valid.check(elements['MEMBER_ID'].value, 'required', true)) { alert('아이디 입력은 필수사항입니다.'); $('input[name="MEMBER_ID"').focus(); return false; }
				if(!tb.Valid.check(elements['MEMBER_ID'].value, 'min-length', 4) || !tb.Valid.check(elements['MEMBER_ID'].value, 'max-length', 12)) { alert('4-12자 이내 영문(소문자)/숫자로 입력하세요.'); $('input[name="MEMBER_ID"').focus(); return false; }
				if(!tb.Valid.check(elements['MEMBER_ID'].value, 'allow-char', ['alphabet-lower', 'numeric'])) { alert('아이디는 4~12자 이내 영문(소문자)/숫자로 입력해주세요'); $('input[name="MEMBER_ID"').focus(); return false; }
				
				tb.Ajax.get({
	                url: '/web/signup/duplicateIdCheck',
	                async: false,
	                data: {
	                    'MEMBER_ID': elements['MEMBER_ID'].value
	                }
	            }).done(function (data) {
	            	idDupCode = data.META.RETURN_CODE;
	                if (data.META.RETURN_CODE < 0) {
	                	var text = '이미 사용중인 ID입니다. 다른 ID를 입력 해 주세요.';
	                	alert(text);
	                	$("#ID_DUP_YN").val('N');
	                	$('input[name="MEMBER_ID"]').focus();
	                    return false;
	                }
	                var text = '사용 가능한 아이디 입니다.';
	                $('input[name="MEMBER_ID"').parent().addClass('on').children('p').removeClass('warning').addClass('on').text(text);
	                $("#ID_DUP_YN").val('Y');
	            }).fail(function (jqXHR, textStatus, errorThrown) {
	            	var text = '이미 사용중인 ID입니다. 다른 ID를 입력 해 주세요.';
	            	alert(text);
	            	$('input[name="MEMBER_ID"').focus();
                	$("#ID_DUP_YN").val('N');
                	 return false;
	            });
				
				if(idDupCode == 0){
					var text = '사용 가능한 비밀번호 입니다.';
					if(!tb.Valid.check(elements['MEMBER_PW'].value, 'required', true)) { alert('비밀번호를 입력하세요.'); $('input[name="MEMBER_PW"').focus(); return false; }
					if(!tb.Valid.check(elements['MEMBER_PW'].value, 'min-length', 6) || !tb.Valid.check(elements['MEMBER_PW'].value, 'max-length', 20)) { alert('비밀번호는 6~20자 이내로 입력하셔야 합니다.'); $('input[name="MEMBER_PW"').focus(); return false; }
					if((!tb.Valid.check(elements['MEMBER_PW'].value, 'regexp', /[0-9]/g) || !tb.Valid.check(elements['MEMBER_PW'].value, 'regexp', /[a-z]/gi)) &&
						(!tb.Valid.check(elements['MEMBER_PW'].value, 'regexp', /[a-z]/gi) || !tb.Valid.check(elements['MEMBER_PW'].value, 'regexp', /[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi)) &&
						(!tb.Valid.check(elements['MEMBER_PW'].value, 'regexp', /[0-9]/g) || !tb.Valid.check(elements['MEMBER_PW'].value, 'regexp', /[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi))) { alert('비밀번호는 영문 숫자 특수문자 2가지 이상 6~20자 이내로 입력하세요.'); $('input[name="MEMBER_PW"').focus(); return false; }
					if(tb.Valid.check(elements['MEMBER_PW'].value, 'regexp', /(\w)\1\1/)) { alert('비밀번호에 동일한 숫자나 문자를 연속으로 사용할 수 없습니다.'); $('input[name="MEMBER_PW"').focus(); return false; }
					if(!tb.Valid.check(elements['pwCheck'].value, 'required', true)) { alert('비밀번호를 다시한번 입력하세요.'); $('input[name="pwCheck"').focus(); return false; }
					if(elements['pwCheck'].value != $('input[name="MEMBER_PW"]').val()) { alert('비밀번호가 일치하지 않습니다.'); target.val(''); $('input[name="pwCheck"').focus(); return false; }
					if(!tb.Valid.check(elements['MEMBER_NAME'].value.replace(/ /gi, ''), 'required', true)) { alert('이름 입력은 필수사항입니다.'); $('input[name="MEMBER_NAME"').focus(); return false; }
					if(!tb.Valid.check(elements['MEMBER_NAME'].value, 'max-byte', 20) || !tb.Valid.check(elements['MEMBER_NAME'].value.replace(/ /gi, ''), 'allow-char', ['alphabet', 'hangul'])) { alert('이름을 정확히 입력하세요.'); $('input[name="MEMBER_NAME"').focus(); return false; }
					if(!tb.Valid.check(elements['MEMBER_EMAIL'].value, 'required', true) || !tb.Valid.check(elements['MEMBER_EMAIL'].value, 'email_new', true)) { alert('이메일 정보는 거래 및 아이디/비밀번호 찾기를 위해 꼭 필요한 정보이므로 정확하게 입력하세요.'); $('input[name="MEMBER_EMAIL"').focus(); return false; }
					if(tb.Valid.check(elements['MEMBER_MOBILE_NO'].value, 'required', true)){
						if(!tb.Valid.check(elements['MEMBER_MOBILE_NO'].value, 'regexp', /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/)) { alert('숫자만 입력하세요.'); $('input[name="MEMBER_MOBILE_NO"]').focus(); return false; }
					}
					if($('input[name="check01"]').val()=='N') { alert('티켓베이 이용약관 동의는 필수입니다.'); $('input[name="check01"]').focus(); return false; }
					if($('input[name="check02"]').val()=='N') { alert('개인정보 수집 및 이용동의는 필수입니다.'); $('input[name="check02"]').focus(); return false; }
					return true;
				}
			}
			
			if(!validate(this)) {
				return false;
			}
			
			document.forms.major.action ="/web/signup/renew/signupPersonalComplete"; 
			
			tb.Ajax.submit(this, {
				dataType: 'json'
			}).done(function(data) {
	            if (data.META.RETURN_CODE == 0) {
	                //alert ("RETURN_URL: " + data.DATA.RETURN_URL);
	                location.href = "/web/signup/renew/signupComplete?MEMBER_NAME="+$('input[name="MEMBER_NAME"]').val();
	            } else {
	                alert ("" + data.META.RETURN_MSG + "[" + data.META.RETURN_CODE + "]");
	            }
			});
		});
	}
	
	$(function() {
		event();
		
		if(memberInfo.signType=="personal"){
			$('input[name="MEMBER_NAME"]').val('');
			$('input[name="MEMBER_EMAIL"]').val('');
			$('input[name="MEMBER_MOBILE_NO"]').val('');
		}else if(memberInfo.signType=="itembay"){
			$('html').addClass('html_100per');
			$('.layer_popup_wrap').addClass(memberInfo.signType);
			$("input[type=checkbox]").attr('disabled',true)
			$("form[name=major]").find("a").attr("tabindex","-1");
			$("input").attr("tabindex","-1");
		}else if(memberInfo.signType=="itembayJoin"){
			// itembay 입력데이터 체크
			$('input[name="MEMBER_NAME"]').val(memberInfo.name).trigger('blur').prop('readonly',true).next().hide();
			$('input[name="MEMBER_EMAIL"]').val(memberInfo.email).trigger('blur').prop('readonly',true).next().hide();
			$('input[name="MEMBER_MOBILE_NO"]').val(memberInfo.mobileNo).trigger('blur').prop('readonly',true).next().hide();
			$('.layer_popup_wrap').removeClass('itembay');
			$('html').removeClass('html_100per');
		}
		
		if(memberInfo.isRejoin === 'true') memberInfo.isRejoin = true;
		
		if(memberInfo.isRejoin === true){
			alert('탈퇴한 회원입니다. 재가입 하시겠습니까?')
			alert('재가입 완료되었습니다.\n재가입된 아이디로 로그인하세요.');
			location.href="/web/signup/renew/signupPersonalRejoin";
		}
	});
})();