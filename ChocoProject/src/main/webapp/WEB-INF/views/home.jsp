<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- css적용 -->
<link rel="stylesheet" type="text/css" href="./resources/css/main.css?ver=1">
<!-- js import -->
<script src="./resources/js/main.js" charset="UTF-8"></script>
<!-- main css 적용 -->
<link rel="stylesheet" type="text/css" href="./resources/css/login.css">
<!-- <script src="http://code.jquery.com/jquery-latest.min.js"></script> -->
<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script -->
<!-- <script src="./resources/compnent/jquery-3.3.1.min.js?"></script> -->
<!-- <script	src="./resources/compnent/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script> -->
<!-- <script	src="./resources/compnent/jquery-loading-master/dist/jquery.loading.min.js"></script> -->
</head>
<body>
	<div id="topMenu">   
		<button class="tablink" onclick="javascript:location.href='home.do'"id="defaultOpen">홈</button>
		<button class="tablink" onclick="">문의게시판</button>
		<button type="button" class="tablink" onclick="javascript:location.href='boardNotice.do'">공지사항</button>
		<button type="button" class="tablink" onclick="document.getElementById('id01').style.display='block'">로그인</button>
	</div>


<!-- 로그인 모달  -->
	<div id="id01" class="modal">
		<form class="modal-content animate">
			<div class="imgcontainer">
				<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span> 
				<img src="../resources/img/login.jpg" alt="Avatar" class="avatar" style="width: 20%;">
			</div>

			<div class="container">
				<label for="uname"><b>아이디</b></label> 
				<input type="text" placeholder="아이디를 입력해주세요." name="userId" id="userId" required> 
				<label for="psw"><b>비밀번호</b></label> 
				<input type="password"	placeholder="비밀번호를 입력해주세요." name="userPw" id="userPw" required>
				<div id="login_check"></div>
				<button type="button" onclick="fnLogin()">로그인</button>
			</div>

			<div class="container" style="background-color: #f1f1f1">
				<button type="button"onclick="document.getElementById('id01').style.display='none'"	class="cancelbtn">취소</button>
				<span class="psw"><a href="javascript:location.href='signupForm.do'">회원가입</a></span>
			</div>
		</form>
	</div>
</body>
</html>