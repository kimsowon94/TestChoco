<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- css���� -->
<link rel="stylesheet" type="text/css" href="./resources/css/main.css?ver=1">
<!-- js import -->
<script src="./resources/js/main.js" charset="UTF-8"></script>
<!-- main css ���� -->
<link rel="stylesheet" type="text/css" href="./resources/css/login.css">
</head>
<body>
	<div id="topMenu">
		<button class="tablink" onclick=""id="defaultOpen">Ȩ</button>
		<button class="tablink" onclick="">���ǰԽ���</button>
		<button type="button" class="tablink" onclick="javascript:location.href='boardNotice.do'">��������</button>
		<button type="button" class="tablink" onclick="document.getElementById('id01').style.display='block'">�α���</button>
	</div>


<!-- �α��� ���  -->
	<div id="id01" class="modal">
		<form class="modal-content animate" action="/action_page.php" method="post">
			<div class="imgcontainer">
				<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span> 
				<img src="../resources/img/login.jpg" alt="Avatar" class="avatar" style="width: 20%;">
			</div>

			<div class="container">
				<label for="uname"><b>���̵�</b></label> <input type="text" placeholder="Enter UserID" name="uname" required> 
				<label for="psw"><b>��й�ȣ</b></label> <input type="password"	placeholder="Enter Password" name="psw" required>
				<button type="submit">�α���</button>
			</div>

			<div class="container" style="background-color: #f1f1f1">
				<button type="button"onclick="document.getElementById('id01').style.display='none'"	class="cancelbtn">���</button>
				<span class="psw"><a href="#">ȸ������</a></span>
			</div>
		</form>
	</div>
</body>
</html>