<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.TreeMap"%>
<%@page import="Member_info.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="Header.jsp"%>
<jsp:useBean id="tmp" class="java.util.TreeMap" scope="application" />
<%
	Iterator iterator = tmp.keySet().iterator();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
a {
	text-decoration: none
}
</style>
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
		<td>수정 삭제</td>
	</tr>
	<%
		while (iterator.hasNext()) {
			Member member = (Member) tmp.get(iterator.next());
	%>
	<tr>
		<td><%=member.getUserid()%></td>
		<td><%=member.getUsername()%></td>
		<td><a id="modifi" href="modifi.jsp">수정 <%
			
		%>
		</a> <a id="can" href="can.jsp">삭제</a></td>
	</tr>
	<%
		}
	%>
	<!-- 입력 받은 id 로 session에 하나씩 저장 하였음  id 하나씩 불러와서 꺼내어서 출력 -->
	<%-- <%
		Enumeration<String> e = application.getAttributeNames();
		while (e.hasMoreElements()) {
			Member tmp = new Member();
			String str = e.nextElement();
			System.out.println(application.getAttribute(str));
			if (application.getAttribute(str) instanceof Member) {
				tmp = (Member) application.getAttribute(str);
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
	%> --%>
</table>