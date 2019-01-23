var host;
var port;
var socket;

// 문서 로딩 후 실행됨
$(function() {
	host = $('#hostInput').val();
	port = $('#portInput').val();
	
	if($('#userId').val() != ''){
		connectToServer();
		loginChat();
		createRoom();
	}
	
	$('#chatBtn').bind('click',function(){
		
		if($('#userId').val() == ''){
			alert('실시간 문의는 회원만 가능합니다.');
			return false;
		}
		//연결
		if($('#modalChat').css('display')!='none'){
			$('#modalChat').fadeOut();
			$('#chatBtn').text('실시간 문의');
		}else{
			$('#modalChat').fadeIn();
			$('#chatBtn').text('문의 닫기');
		}
	});

	// 전송 버튼 클릭 시 처리
	$('#sendButton').bind('click', function(event) {
		sendMsg();
	});
	$("#dataInput").keyup(function(e){
		if (e.keyCode == 13 && e.shiftKey) {
	        if (e.type == "keypress") {
	            pasteIntoInput(this, "\n");
	        }
	        e.preventDefault();
	    }
		else if(e.keyCode == 13) {
			sendMsg();
		}
		
	});



	// 방입장하기 버튼 클릭 시 처리
	$("#joinRoomButton").bind('click', function(event) {
		var roomId = $('#roomIdInput').val();

		var output = {
			command : 'join',
			roomId : roomId
		};

		if (socket == undefined) {
			alert('서버에 연결되어 있지 않습니다. 먼저 서버에 연결하세요.');
			return;
		}

		socket.emit('room', output);
	});

	// 방나가기 버튼 클릭 시 처리
	$("#leaveRoomButton").bind('click', function(event) {
		var roomId = $('#roomIdInput').val();

		var output = {
			command : 'leave',
			roomId : roomId
		};

		if (socket == undefined) {
			alert('서버에 연결되어 있지 않습니다. 먼저 서버에 연결하세요.');
			return;
		}

		socket.emit('room', output);
	});

});

function sendMsg(){
	// chattype 구분
	var chattype = 'chat';
	var sender = $('#senderInput').val();
	var recepient = 'admin';
	var data = $('#dataInput').val();

	var output = {
		sender : sender,
		recepient : recepient,
		command : chattype,
		type : 'text',
		data : data
	};

	if (socket == undefined) {
		alert('서버에 연결되어 있지 않습니다. 먼저 서버에 연결하세요.');
		return;
	}

	socket.emit('message', output);
	$('#dataInput').val('');
}

function loginChat(){
	var id = $('#idInput').val();
	var output = {
		id : id,
	};
	if (socket == undefined) {
		alert('서버에 연결되어 있지 않습니다. 먼저 서버에 연결하세요.');
		return;
	}
	socket.emit('login', output);
}

function createRoom(){
	var roomId = $('#roomIdInput').val();
	var roomName = $('#roomNameInput').val();
	var id = $('#idInput').val();
	var output = {
		command : 'create',
		roomId : roomId,
		roomName : roomName,
		roomOwner : id
	};
	if (socket == undefined) {
		alert('서버에 연결되어 있지 않습니다. 먼저 서버에 연결하세요.');
		return;
	}
	socket.emit('room', output);
}

// 서버에 연결하는 함수 정의
function connectToServer() {
	var userId = $('#senderInput').val();
	var options = {
		'forceNew' : true
	};
	var url = 'http://' + host + ':' + port;
	socket = io.connect(url, options);

	socket.on('connect', function() {

		socket.on('message', function(message) {
			console.log(JSON.stringify(message));
			if(message.sender == userId){
				println('<span class="wrapSpan"><span class="span-my">' + message.data + '</span></span>');
			}else {
				println('<span class="wrapSpan"><span class="span-other">' + message.sender+ ' : ' +message.data + '</span></span>');
			}
			$("#result").scrollTop($("#result")[0].scrollHeight);
		});

		socket.on('response', function(response) {
			console.log(JSON.stringify(response));
			if(response.message == userId){
				println('<span class="wrapSpan"><span class="span-my">' + response.message + '</span></span>');
			}else {
				println('<span class="wrapSpan"><span class="span-other">' + response.message + '</span></span>');
			}
			$("#result").scrollTop($("#result")[0].scrollHeight);
		});

		// 그룹 채팅에서 방과 관련된 이벤트 처리
		socket.on('room', function(data) {
			console.log(JSON.stringify(data));

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

function println(data) {
	$('#result').append(data);
	$("#result").scrollTop($("#result")[0].scrollHeight);
}