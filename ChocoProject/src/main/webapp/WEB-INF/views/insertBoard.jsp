<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>공지사항 등록하기</title>
<!-- signup css 적용 -->
<link rel="stylesheet" type="text/css" href="./resources/css/insertBoard.css">
</head>

<body>
	<jsp:include page="home.jsp" />
	<div class="container" style="margin: auto; width: 50%;">
		<form action="/action_page.php">
			<div class="row">
				<div class="col-25">
					<label for="lname">제목</label>
				</div>
				<div class="col-75">
					<input type="text" id="lname" name="lastname"
						placeholder="제목을 입력해주세요.">
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="subject">내용</label>
				</div>
				<div class="col-75">
					<textarea id="subject" name="subject" placeholder="내용을 입력해주세요."
						style="height: 200px"></textarea>
				</div>
			</div>
			<div class="row">
				<input type="button" value="등록하기">
			</div>
		</form>
	</div>

</body>
</html>