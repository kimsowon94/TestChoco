<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
<!-- css적용 -->
<link rel="stylesheet" type="text/css" href="./resources/css/noticeBoard.css?ver=1">
<!-- js import -->
<script src="./resources/js/main.js" charset="UTF-8"></script>
<script src="./resources/js/mainFuc.js" charset="UTF-8"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css"/>

<title>공지사항</title>
</head>
<body>
<jsp:include page="home.jsp"/>  
<table id="noticeBoard" class="table table-striped table-bordered" style="width: 100%;" >
        <thead>
            <tr>
                <th>게시글 번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성시간</th>
                <th>조회수</th>

            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
            </tr>
       </tbody>
    </table>
</body>
</html>