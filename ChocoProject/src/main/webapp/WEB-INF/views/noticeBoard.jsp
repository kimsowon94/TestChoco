<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width-device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<!-- css적용 -->
<link rel="stylesheet" type="text/css" href="./resources/css/noticeBoard.css?ver=1">
<!-- js import -->
<script src="./resources/js/main.js" charset="UTF-8"></script>
<script src="./resources/js/mainFuc.js" charset="UTF-8"></script>
<title>공지사항 관리</title>
</head>
<body>
	<jsp:include page="home.jsp" />
	<div class="container">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>공지사항입니다.</td>
					<td>관리자</td>
					<td>2020-05-08</td>
				</tr>
			</tbody>
		</table>
		<hr />
		<a class="btn btn-default pull-right" style="border: 1px solid;" onclick="document.getElementById('id02').style.display='block'">글쓰기</a>
	</div>
	
	<!-- 공지사항 모달  -->
	<div id="id02" class="modal">
		<form class="modal-content animate">
			<div class="imgcontainer">
				<span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span> 
			</div>

			<div class="container">
				<!-- <label for="boardTitle"><b>제목</b></label>  -->
				<input type="text"  name="boardTitle" class="boardTitle"required placeholder="제목을 입력해주세요."> 
				<!-- <label for="boardContent"><b>내용</b></label> -->
				<textarea rows="15" cols="57" placeholder="내용을 입력해주세요."></textarea> 
				<!-- <input type="text"	placeholder="비밀번호를 입력해주세요." class="userPw" name="userPw"required> -->
				<button type="button">등록하기</button>
			</div>

			<div class="container" style="background-color: #f1f1f1">
				<button type="button"onclick="document.getElementById('id02').style.display='none'"	class="cancelbtn">취소</button>
			</div>
		</form>
	</div>
	
<script src="js/jquery-3.1.1.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>