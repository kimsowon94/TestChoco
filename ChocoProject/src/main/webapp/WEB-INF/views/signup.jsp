<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- signup css 적용 -->
<link rel="stylesheet" type="text/css" href="./resources/css/signup.css">
<title>회원가입</title>
</head>
<body>
	<div>
		<jsp:include page="home.jsp"/>
	</div>
	<form action="/action_page.php">
		<div class="container">
			<h1>회원가입</h1>
			<hr>
			<div class="in-line">
				<label for="userId"><b>아이디</b></label><br> <input type="text"
					placeholder="아이디를 입력해주세요." name="userId" required
					style="width: 75%;"> <input type="button" class="btn"
					value="중복확인">
			</div>
			<label for="userPw"><b>비밀번호</b></label><br> <input
				type="password" placeholder="비밀번호를 입력해주세요." name="userPw" required><br>

			<label for="userPw2"><b>비밀번호 재확인</b></label><br> <input
				type="password" placeholder="비밀번호를 다시한번 입력해주세요." name="userPw2"
				required><br> <label for="userName"><b>닉네임</b></label><br>
			<input type="text" placeholder="닉네임을 입력해주세요." name="userName"
				required><br> <label for="userPhone"><b>휴대폰번호</b></label><br>
			<input type="text" placeholder="휴대폰번호를 입력해주세요." name="userPhone"
				required><br> <label for="userAddr1"><b>주소입력</b></label><br>
			<input type="text" name="userAddr1" required style="width: 75%;">
			<input type="button" value="주소찾기" class="btn"> <input
				type="text" name="userAddr2" required>
			<hr>

			<button type="submit" class="registerbtn">회원가입</button>
		</div>

		<div class="container signin">
			<p>
				이미 계정이 있으신가요? <a href="#">로그인</a>
			</p>
		</div>
	</form>
</body>
</html>