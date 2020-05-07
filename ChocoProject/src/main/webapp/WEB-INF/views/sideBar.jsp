<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
  /* margin: 0; */
  font-family: "Lato", sans-serif;
}

.sidebar {
   float: left;
  /* margin: 0; */
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #4CAF50;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
</style>
</head>
<body>
<div class="sidebar">
  <a class="active">내 정보수정</a>
  <a onclick="if(confirm('로그아웃하시겠습니까?')){location.href='logout.do'}">로그아웃</a>
  <!-- <a href="#contact">Contact</a>
  <a href="#about">About</a> -->
</div>
<!-- <div class="content">

</div> -->

</body>
</html>