<%@page import="java.util.Enumeration"%>
<%@page import="java.util.TreeMap"%>
<%@page import="Member_info.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="Header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
table, table td {
	text-align: center;
}

table td {
	border: 1px solid black;
	width: auto;
	padding: 7px;
}
</style>
</head>

<table border="1">
	<tr>
		<td>아이디</td>
		<td>이름</td>
	</tr>
	<!-- 입력 받은 id 로 session에 하나씩 저장 하였음  id 하나씩 불러와서 꺼내어서 출력 -->
	<%
		Enumeration<String> e = session.getAttributeNames();
		while (e.hasMoreElements()) {
			Member tmp = new Member();
			String str = e.nextElement();
			
			if (session.getAttribute(str) instanceof Member) {
				tmp = (Member) session.getAttribute(str);
			} else {
				continue;
			}
	%>
	<tr>
		<td><%=tmp.getUserid()%></td>
		<td><%=tmp.getUsername()%></td>
	</tr>
	<%
		}
	%>
</table>