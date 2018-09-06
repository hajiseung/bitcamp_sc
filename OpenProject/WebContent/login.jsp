<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="Header.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("userID");
	String pw = request.getParameter("userPW");

	if (id != null && pw != null && id.equals(pw)) {
		request.getSession(false).setAttribute("userID", id);
		request.getSession(false).setAttribute("userNAME", "하지승");
		response.sendRedirect("myPage.jsp");
	}
%>
<div id="contents">
	<h2>로그인</h2>
	<hr>
	<h1>아이디 또는 비밀번호가 틀립니다.</h1>
	<h1><a href="loginForm.jsp">다시 로그인 하기.</a></h1>
</div>