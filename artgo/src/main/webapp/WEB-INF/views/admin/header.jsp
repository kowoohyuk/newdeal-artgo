<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="navbar">
	<div class="row">
		<div class="column column-30 col-site-title"><a href="/main.do" class="site-title float-left">ArtGo</a></div>
		<div class="column column-30">
			<div class="user-section"><a href="#">
				<img src="/resources/artgo/img/admin.png" alt="profile photo" class="circle float-left profile-photo" width="50" height="auto">
				<div class="username">
					<h4>${userInfo.name}</h4>
					<p>${userInfo.id}</p>
				</div>
			</a></div>
		</div>
	</div>
</div>