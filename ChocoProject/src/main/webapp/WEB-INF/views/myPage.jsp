<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- signup css 적용 -->
<link rel="stylesheet" type="text/css" href="./resources/css/signupUpdate.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="./resources/compnent/jquery-3.3.1.min.js?"></script>
<script	src="./resources/compnent/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script	src="./resources/compnent/jquery-loading-master/dist/jquery.loading.min.js"></script>

<script src="./resources/js/main.js" charset="UTF-8"></script>
<script src="./resources/js/mainFuc.js" charset="UTF-8"></script>
<!-- 주소찾기 api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>
<body>
<jsp:include page="home.jsp"/>  
<jsp:include page="sideBar.jsp"/> 
	<form class="registerUpdate" id="registerUpdate">
	<c:forEach items="${userInfo }" var="a">
		<div class="signup-container">
			<h1>회원정보수정</h1>
			<hr>
			<div class="in-line">
				<label><b>아이디</b></label><br> 
				<input type="text" name="userId" value="${a.userId }" class="userId" readonly="readonly"> 
			</div>
			
			<label><b>비밀번호</b></label><br> 
			<input	type="password" placeholder="비밀번호를 입력해주세요." name="userPw" required id="userPw" maxlength="15"><br>

			<label><b>비밀번호 재확인</b></label><br> 
			<input type="password" placeholder="비밀번호를 다시한번 입력해주세요." name="userPw2"required id="userPw2" maxlength="15"><br>
			<div class="check_font" id="pw_check"></div>
			 
			<label for="userName"><b>닉네임</b></label><br>
			<input type="text" name="userName" required id="userName" maxlength="7" value="${a.userName }"><br>
			<div class="check_font" id="name_check"></div>
			 
			<label for="userPhone"><b>휴대폰번호</b></label><br>
			<input type="text" name="userPhone" required id="userPhone" maxlength="13" onkeyup="telValidate(this)" value="${a.userPhone }"><br> 
			
			<label for="userAddr1"><b>주소입력</b></label><br>
			<input type="text" name="userAddr1" required style="width: 75%;" id="userAddr1" id="userAddr1" maxlength="5" readonly="readonly" value="${a.userAddr1 }">
			<input type="button" value="주소찾기" class="btn" onclick="openDaumZipAddress()"> 
			<input type="text" name="userAddr2" required id="userAddr2" id="userAddr2" maxlength="50" value="${a.userAddr2 }">
			<div class="check_font" id="addr_check"></div>
			<hr>

			<button type="button" id="registerUpdateBtn" class="registerUpdateBtn" onclick="fnUserUpdate()">정보 수정</button>
		</div>
		</c:forEach>
	</form>
</body>
</html>