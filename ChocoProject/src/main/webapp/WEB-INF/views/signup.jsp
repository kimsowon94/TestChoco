<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- signup css 적용 -->
<link rel="stylesheet" type="text/css" href="./resources/css/signup.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="./resources/compnent/jquery-3.3.1.min.js?"></script>
<script	src="./resources/compnent/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script	src="./resources/compnent/jquery-loading-master/dist/jquery.loading.min.js"></script>

<script src="./resources/js/main.js" charset="UTF-8"></script>
<script src="./resources/js/mainFuc.js" charset="UTF-8"></script>
<!-- 주소찾기 api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<title>회원가입</title>
</head>
<body>
	<div>
		<jsp:include page="home.jsp"/>
	</div>
	<form class="registerForm" id="registerForm">
		<div class="container">
			<h1>회원가입</h1>
			<hr>
			<div class="in-line">
				<label for="userId"><b>아이디</b></label><br> 
				<input type="text"placeholder="아이디를 입력해주세요." name="userId" id="userId" required> 
				<!-- <input type="button" class="btn" value="중복확인"> -->
				<div class="check_font" id="id_check"></div>
			</div>
			
			<label for="userPw"><b>비밀번호</b></label><br> 
			<input	type="password" placeholder="비밀번호를 입력해주세요." name="userPw" required><br>

			<label for="userPw2"><b>비밀번호 재확인</b></label><br> 
			<input type="password" placeholder="비밀번호를 다시한번 입력해주세요." name="userPw2"required><br>
			 
			<label for="userName"><b>닉네임</b></label><br>
			<input type="text" placeholder="닉네임을 입력해주세요." name="userName"	required><br>
			 
			<label for="userPhone"><b>휴대폰번호</b></label><br>
			<input type="text" placeholder="휴대폰번호를 입력해주세요." name="userPhone" required><br> 
			
			<label for="userAddr1"><b>주소입력</b></label><br>
			<input type="text" name="userAddr1" required style="width: 75%;" id="userAddr1">
			<input type="button" value="주소찾기" class="btn" onclick="openDaumZipAddress()"> 
			<input type="text" name="userAddr2" required id="userAddr2">
			<hr>

			<button type="button" id="registerbtn" class="registerbtn" onclick="registerFn()">회원가입</button>
		</div>

		<div class="container signin">
			<p>
				이미 계정이 있으신가요? <a href="">로그인</a>
			</p>
		</div>
	</form>
</body>
</html>