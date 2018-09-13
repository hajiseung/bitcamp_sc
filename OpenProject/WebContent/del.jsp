<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="tmp" class="java.util.TreeMap" scope="application" />
<%
	String str = request.getParameter("id");
	System.out.println(tmp.remove(str));
	response.sendRedirect("memberList.jsp");
%>
