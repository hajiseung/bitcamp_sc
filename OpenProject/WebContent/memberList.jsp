<%@page import="java.util.Iterator"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.TreeMap"%>
<%@page import="Member_info.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="Header.jsp"%>
<%
	/* 입력 받은 id 로 session에 하나씩 저장 하였음  */
	/* id 하나씩 불러와서 꺼내어서 출력 */
	//Iterator<String> it = session.getAttributeNames(); 

	Enumeration<String> e = session.getAttributeNames();
	while (e.hasMoreElements()) {
		//System.out.println(e.nextElement());
		TreeMap tmp;
		System.out.println(((TreeMap) session.getAttribute(e.nextElement())).values());
	}
%>
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
		<td colspan="2">Session 영역에 저장된 내용들</td>
	</tr>

	<%
		Enumeration k = session.getAttributeNames();
		while (k.hasMoreElements()) {
			String attributeName = (String) k.nextElement();
			//String attributeValue = (String) session.getAttribute(attributeName);
	%>
	<tr>
		<td><%=attributeName%></td>
		<%-- <td><%=attributeValue%></td> --%>
	</tr>
	<%
		}
	%>
</table>