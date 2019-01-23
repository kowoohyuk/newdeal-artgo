var host;
var port;
var socket;
var id;
var roomId;
var roomName;


// 문서 로딩 후 실행됨
$(function() {
	host = '192.168.0.102';
	port = '3000';
	id = 'admin';
	roomId = 'admin';
	roomName = '관리자';

	connectToServer();
	loginChat();
	createRoom();

	// 방이름바꾸기 버튼 클릭 시 처리
	$("#updateRoomButton").bind('click', function(event) {
		var id = $('#idInput').val();

		var output = {
			command : 'update',
			roomId : roomId,
			roomName : roomName,
			roomOwner : id
		};
		console.log('서버로 보낼 데이터 : ' + JSON.stringify(output));

		if (socket == undefined) {
			alert('서버에 연결되어 있지 않습니다. 먼저 서버에 연결하세요.');
			return;
		}

		socket.emit('room', output);
	});

	// 방입장하기 버튼 클릭 시 처리
	$("#joinRoomButton").bind('click', function(event) {

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

});

function sendMsg(){

	// chattype 구분
	var chattype = 'chat';

	var sender = 'admin';
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
}

// 서버에 연결하는 함수 정의
function connectToServer() {
	var userId = 'admin';
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
				$("#roomList").html('<p class="p-header">문의자  목록</p>');
				for (var i = 0; i < roomCount; i++) {
					if(data.rooms[i].id != 'admin'){
						$("#roomList").append('<p class="q-id">' + data.rooms[i].id + '</p>');
					}
				}
				$('.q-id').click(function(){
					$('#recepientInput').val($(this).text());
				});
			}
		});

	});

	socket.on('disconnect', function() {
	});

}

function loginChat() {
	
	var output = {
		id : id
	};
	console.log('서버로 보낼 데이터 : ' + JSON.stringify(output));

	if (socket == undefined) {
		alert('서버에 연결되어 있지 않습니다. 먼저 서버에 연결하세요.');
		return;
	}
	socket.emit('login', output);
}

function createRoom() {
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

function println(data) {
	console.log(data);
	$('#result').append('<p>' + data + '</p>');
}