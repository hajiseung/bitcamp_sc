<%@page import="java.util.Iterator"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.TreeMap"%>
<%@page import="Member_info.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="Header.jsp"%>

<%
	request.setCharacterEncoding("utf-8");
	String userID = request.getParameter("id");
	String userPW = request.getParameter("pw");
	String userNAME = request.getParameter("name");

	/* 회원 가입 할 때 마다 session.setAttribute 다른 곳에 id pw name를 저장해야 한다. */
	TreeMap<String, Member> map = new TreeMap<>();
	map.put(userID, new Member(userID, userPW, userNAME));

	session.setAttribute(userID, map);
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
</table>

