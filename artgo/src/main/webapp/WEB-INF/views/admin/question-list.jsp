<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="row">
	<section id="main-content" class="column column-offset-20">
		<div class="row grid-responsive">
			<div class="column page-heading">
				<h3>실시간 문의</h3>
			</div>
		</div>
		<div id="roomList"></div>
		<div>
			<div id="result"></div>
	
			<div class="div-chat-input">
				<textarea id="dataInput" cols="30" rows="4"></textarea>
				<input type="button" id="sendButton" value="보내기" />
			</div>
	
			<div>
				<span>받는사람 아이디 :</span> <input type="text" id="recepientInput"
					value="ALL" />
			</div>
	
		</div>
	</section>
</div>
<script src="http://192.168.0.102:3000/socket.io/socket.io.js"></script>
<script src="/resources/admin/js/admin-app.js"></script>
