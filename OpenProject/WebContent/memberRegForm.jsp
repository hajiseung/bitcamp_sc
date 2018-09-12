<%@page import="java.util.TreeMap"%>
<%@page import="java.util.Enumeration"%>
<%@page import="Member_info.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="Header.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="Member" class="Member_info.Member" scope="request" />
<jsp:useBean id="tmp" class="java.util.TreeMap" scope="application" />
<jsp:setProperty property="*" name="Member" />
<%
	/* String userID = request.getParameter("id");
	String userPW = request.getParameter("pw");
	String userNAME = request.getParameter("name");
	
	TreeMap<String, Member> tm = new TreeMap<>();
	tm.put(userID, new Member(userID, userPW, userNAME));
	
	application.setAttribute(userID, tm.get(userID)); */

	tmp.put(Member.getUserid(), Member);
%>

<h2>회원가입</h2>
<hr>

<table>
	<tr>
		<td>아이디(이메일)</td>
		<%-- <td><%=Member.getUserid()%></td> --%>
		<td>${Member.userid }</td>
		<%-- <td>${tmp.userid }</td> --%>
	</tr>
	<tr>
		<td>비밀번호</td>
		<%-- <td><%=userPW%></td> --%>
		<td>${Member.userpw }</td>
		<%-- <td>${tmp.userpw }</td> --%>
	</tr>
	<tr>
		<td>이름</td>
		<%-- <td><%=userNAME%></td> --%>
		<td>${Member.username }</td>
		<%-- <td>${tmp.username }</td> --%>
	</tr>
</table>