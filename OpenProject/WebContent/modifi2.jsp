<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.TreeMap"%>
<%@page import="Member_info.Member"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="tmp" class="java.util.TreeMap" scope="application" />
<%
	String id = (String) session.getAttribute("idd");
	String name = request.getParameter("modiName");
	String pw = request.getParameter("modiPw");
	tmp.replace(id, new Member(id, pw, name));
	session.removeAttribute("idd");
	response.sendRedirect("memberList.jsp");
%>

<!-- 수정할 키를 찾고 그 키의 값들을 바꿔 준다. -->
<!-- ex) b를 선택하면 그곳의 값에 접근하여 set메서드로 다시 설정한다. -->