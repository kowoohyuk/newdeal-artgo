<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
	<div class="container">
		<div class="slider-area col-lg-12">
			<ul class="bxslider">
				<c:forEach var="banner" items="${bannerlist}">
			      <li>
			      	<a href="/exhibit/view.do?bno=${banner.bno}">
			      		<img src='<spring:url value="/img/${banner.folder}/${banner.saveName}"/>' class="banner-img">
			      	</a>
			      </li>
				</c:forEach>
		  	</ul>	
		</div>
		
	    <div class="blog-wrapper section-padding-50 clearfix">
	        <div class="container">
	       		<div class="col-lg-12">
		            <div class="single-blog-area clearfix mb-20">
		                <div class="single-blog-content">
			                <h4><a href="#" class="post-headline">New 전시회</a></h4>
		                    <div class="line"></div>
		                </div>
		            </div>
	            </div>
	            
				<c:forEach var="exhibit" items="${newlist}">
				  	 <div class="col-12 col-md-6 col-lg-4">
		                <div class="single-catagory-area clearfix mb-100 new-ex-zone">
						  	<a class="a-ex-flag" href="/exhibit/view.do?bno=${exhibit.bno}">
				                <img src='<spring:url value="/img/${exhibit.folder}/${exhibit.saveName}"/>' title="${exhibit.title}" class="img-main-newlist">
		                    	<p class="newlist-title">${exhibit.title}</p>
		                    	<p class="newlist-text">${exhibit.place}</p>
						  	</a>
		                </div>
		           	 </div>
				</c:forEach>            
	        </div>
	    </div>
	</div>
    
    <div class="container">
    	<div class="col-12 col-lg-6">
          <div class="single-blog-area clearfix mb-100">
              <div class="single-blog-content" id="mainExhibDiv">
               <h4>
               	<a href="#" class="post-headline">종료 예정 전시회</a> 
               </h4>
               <div class="line"></div>
              </div>
          </div>
        </div>
        <div class="col-12 col-lg-6">
          <div class="single-blog-area clearfix mb-100">
              <!-- Blog Content -->
              <div class="single-blog-content" id="mainFavorDiv">
               <h4><a href="#" class="post-headline">즐겨찾기</a></h4>
                  <div class="line"></div>
              </div>
          </div>
        </div>
     </div>
<button class="btn" id="chatBtn"></button>
<div id="modalChat">
	<br>
    <div>
        <input type="hidden" id="hostInput" value="localhost" />
        <input type="hidden" id="portInput" value="3000" />
     	<input type="hidden" id="idInput" value="${userInfo.id}" />
     	<input type="hidden" id="roomIdInput" value="${userInfo.id}" />
		<input type="hidden" id="senderInput" value="${userInfo.id}"/>
		<input type="hidden" id="recepientInput" value="admin" />
    </div>
    <div>
	    <select name="chattype" id="chattype">
			<option value="chat">채팅</option>
			<option value="groupchat" selected>그룹채팅</option>
		</select>

	    <div><input type="text" id="dataInput" value="안녕!" placeholder="문의 사항을 적어주세요!"/> </div>
		<br>
		<input type="button" id="sendButton" value="보내기" />
	</div>    
        
    <hr/>
    <div id="result"></div>
</div>

		
	</head>


<script src="http://localhost:3000/socket.io/socket.io.js"></script>
<script src="jquery-3.1.1.min.js"></script>
<script>
	var host;
	var port;
	var socket;

	//문서 로딩 후 실행됨
	$(function() {

		$('#chatBtn').on('click',function(){

			host = $('#hostInput').val();
			port = $('#portInput').val();

			connectToServer();
			
			chatLogin();
			
			$('#modalChat').css('display','inline-block');
		});

		// 전송 버튼 클릭 시 처리
		$("#sendButton").bind('click', function(event) {

			// chattype 구분
			var chattype = $('#chattype option:selected').val();

			var sender = $('#senderInput').val();
			var recepient = $('#recepientInput').val();
			var data = $('#dataInput').val();

			var output = {
				sender : sender,
				recepient : recepient,
				command : chattype,
				type : 'text',
				data : data
			};
			console.log('서버로 보낼 데이터 : ' + JSON.stringify(output));

			if (socket == undefined) {
				alert('서버에 연결되어 있지 않습니다. 먼저 서버에 연결하세요.');
				return;
			}

			socket.emit('message', output);
		});


		// 방입장하기 버튼 클릭 시 처리
		$("#joinRoomButton").bind('click', function(event) {
			var roomId = $('#roomIdInput').val();

			var output = {
				command : 'join',
				roomId : roomId
			};
			console.log('서버로 보낼 데이터 : ' + JSON.stringify(output));

			if (socket == undefined) {
				alert('서버에 연결되어 있지 않습니다. 먼저 서버에 연결하세요.');
				return;
			}

			socket.emit('room', output);
		});


	});
	
	
	// 서버에 연결하는 함수 정의
	function connectToServer() {
		var id = $('#idInput').val();

		var options = {
			'forceNew' : true
		};
		var url = 'http://' + host + ':' + port;
		socket = io.connect(url, options);

		socket.on('connect', function() {
			println('반갑습니다! 문의사항을 적어주세요.');

			socket.on('message', function(message) {
				console.log(JSON.stringify(message));
				
				if(message.sender == id){
					println('<p>보낸 메시지 : ' + message.data + '</p>');
				}
				else{
					println('<p>받은 메시지 : ' + message.data + '</p>');
					
				}
			});

			socket.on('response', function(response) {
			});

			// 그룹 채팅에서 방과 관련된 이벤트 처리
			socket.on('room', function(data) {
				console.log(JSON.stringify(data));

				println('<p>방 이벤트 : ' + data.command + '</p>');
				println('<p>방 리스트를 받았습니다.</p>');
				if (data.command == 'list') { // 방 리스트
					var roomCount = data.rooms.length;
					$("#roomList").html('<p>방 리스트 ' + roomCount + '개</p>');
					for (var i = 0; i < roomCount; i++) {
						$("#roomList").append(
								'<p>방 #' + i + ' : ' + data.rooms[i].id + ', '
										+ data.rooms[i].name + ', '
										+ data.rooms[i].owner + '</p>');
					}
				}
			});

		});

		socket.on('disconnect', function() {
			println('웹소켓 연결이 종료되었습니다.');
		});

	}
	
	function chatLogin(){
		var id = $('#idInput').val();

		var output = {
			id : id,
		};
		console.log('서버로 보낼 데이터 : ' + JSON.stringify(output));

		if (socket == undefined) {
			alert('서버에 연결되어 있지 않습니다. 먼저 서버에 연결하세요.');
			return;
		}

		socket.emit('login', output);
	}
	
	function createRoom(){
		var roomId = $('#roomIdInput').val();
		var id = $('#idInput').val();

		var output = {
			command : 'create',
			roomId : roomId,
			roomOwner : id
		};
		console.log('서버로 보낼 데이터 : ' + JSON.stringify(output));

		if (socket == undefined) {
			alert('서버에 연결되어 있지 않습니다. 먼저 서버에 연결하세요.');
			return;
		}

		socket.emit('room', output);
	}

	

	function println(data) {
		console.log(data);
		$('#result').append('<p>' + data + '</p>');
	}
</script>

<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script src="/resources/artgo/js/main.js"></script>
