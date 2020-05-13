<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <meta name="viewport" content="width-device-width, initial-scale=1"> -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<!-- css적용 -->
<link rel="stylesheet" type="text/css" href="./resources/css/noticeBoard.css?ver=1">
<!-- js import -->
<script src="./resources/js/main.js" charset="UTF-8"></script>
<script src="./resources/js/mainFuc.js" charset="UTF-8"></script>
<!-- <script src="./resources/compnent/jquery-3.3.1.min.js?"></script> -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>회원 관리</title>
<style>
body {
  font-family: Arial;
}

* {
  box-sizing: border-box;
}

form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
</style>
</head>
<body>
	<jsp:include page="home.jsp" />
	<jsp:include page="adminSideBar.jsp"/>
	<form class="example"  style="float:right; max-width: 200px; padding: 10px;">
		<input type="text" placeholder="Search.." name="searchInput" id="searchInput">
		<button type="button" onclick="searchBtn()">
			<i class="fa fa-search"></i>
		</button>
	</form>
	<div class="container" style="width: 84%; float: right;"  id="userList_div">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>닉네임</th>
					<th>핸드폰번호</th>
					<th>등록날짜</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>		
				<c:forEach items="${list }" var="a">
					<tr>
						<td>${a.userNum }</td>
						<td>${a.userId }</td>
						<td>${a.userName }</td>
						<td>${a.userPhone }</td>
						<td>${a.createTime }</td>
						<td><input type="button" id="blackUser" style="width: 40%;" value="블랙"></td>
					</tr>
				</c:forEach>				
			</tbody>
		</table>
		<hr />
	</div>	
</body>
</html>