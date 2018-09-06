<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="Header.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	String userID = request.getParameter("id");
	String userPW = request.getParameter("pw");
	String userNAME = request.getParameter("name");
%>
<h2>회원가입</h2>
<hr>

<table>
	<tr>
		<td>아이디(이메일)</td>
		<td><%=userID%></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><%=userPW%></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><%=userNAME%></td>
	</tr>
	<tr>
		<td>사진</td>
		<td></td>
	</tr>
</table>

