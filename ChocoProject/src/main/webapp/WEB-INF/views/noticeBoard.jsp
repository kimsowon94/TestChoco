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
					<c:if test="${sessionScope.adminId != null}">
					<th>비고</th>
					</c:if>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="a" items="${list }">
				<tr>
					<td>${a.boardNum}</td>
					<td onclick="document.getElementById('id02').style.display='block'; fnNoticeUpdateForm(${a.boardNum});" style="cursor:pointer;">${a.boardTitle}</td>
					<td>관리자</td>
					<td>${a.boardDate }</td>
					<c:if test="${sessionScope.adminId != null}">
					<td><input type="button" id="deleteNotice" style="width: 30%;" value="삭제" onclick="if(confirm('해당 공지사항을 삭제하시겠습니까?')){javascript:location.href='/noticeDelete.do?boardNum='+ ${a.boardNum}}"></td>
					</c:if>				
				</tr>
				<%-- <input type="hidden" value="${a.boardNum }" id="hidden_boardNum"> --%>
				</c:forEach>
			</tbody>
		</table>
		<hr />
		<c:if test="${sessionScope.adminId != null}">
		<a class="btn btn-default pull-right" id="insertBtn" style="border: 1px solid;" onclick="document.getElementById('id02').style.display='block'">글쓰기</a>
		</c:if>
	</div>
	
	<!-- 공지사항 모달  -->
	<div id="id02" class="modal">
		<form class="modal-content animate noticeAnimate">
		<input type="hidden" id="boardNum" name="boardNum">
		<input type="hidden" id="adminId" name="adminId" value="${sessionScope.adminId }">
		
			<div class="imgcontainer">
				<span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span> 
			</div>

			<div class="container">
				<input type="text" id="boardTitle" name="boardTitle" class="boardTitle"required placeholder="제목을 입력해주세요."> 
				<textarea rows="15" class="boardContent" cols="57" name="boardContent" id="summernote" placeholder="내용을 입력해주세요."></textarea> 				
				<button type="button" id="noticeInsertBtn" style="display: none;" onclick="fnNoticeInsert()">등록하기</button>
				<button type="button" id="noticeUpdateBtn" style="display: none;" onclick="fnNoticeUpdate()">수정하기</button>
			</div>

			<div class="container" style="background-color: #f1f1f1">
				<button type="button"onclick="document.getElementById('id02').style.display='none'"	class="cancelbtn">취소</button>
			</div>
		</form>
	</div>
</body>
</html>