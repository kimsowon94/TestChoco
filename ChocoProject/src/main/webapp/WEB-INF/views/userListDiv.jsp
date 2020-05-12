<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<c:forEach items="${searchList }" var="a">
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