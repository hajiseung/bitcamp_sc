<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Member_info.Member"%>
<%
	String id = (String) request.getSession(false).getAttribute("userID");
	String name = (String) request.getSession(false).getAttribute("userNAME");

	if (id == null) {
%>
<script>
	alert("로그인 후 사용 가능한 서비스 입니다.");
	location.href = "loginForm.jsp";
</script>
<%
	} else {
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
h2, td {
	padding: 10px;
}

#memberPhoto {
	background-image: url('img/totoro.jpg');
	background-size: 100%;
	width: 150px;
	height: 150px;
	border: 1px solid black;
	border-radius: 75px;
	margin: 20px 0;
}
</style>
</head>
<body>

	<%@ include file="Header.jsp"%>
	<div id="contents">
		<h1>회원정보</h1>
		<hr />
		<div id="memberPhoto"></div>
		<hr />
		<table>

			<tr>
				<td>아이디</td>
				<td><%=id%></td>
			</tr>

			<tr>
				<td>이름</td>
				<td><%=name%></td>
			</tr>
		</table>
	</div>
</body>
</html>

<%
	}
%>