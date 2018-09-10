<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/default.css">
<h1>Open Project</h1>
<ul id="gnb">
	<li><a href="Index.jsp">Home</a></li>
	<li><a href="memberReg.jsp">회원가입</a></li>
	<%
		String lid = (String) request.getSession(false).getAttribute("userID");
		if (lid == null) {
	%>
	<li><a href="loginForm.jsp">로그인</a></li>
	<%
		} else {
	%>
	<li><a href="logout.jsp">로그아웃</a></li>
	<%
		}
	%>
	<li><a href="myPage.jsp">마이페이지</a></li>
	<li><a href="memberList.jsp">회원 리스트</a></li>
</ul>
