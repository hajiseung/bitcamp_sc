<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="Member_info.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="Header.jsp"%>
<%-- <jsp:useBean id="tmp" class="java.util.TreeMap" scope="application" />
<%
	Iterator iterator = tmp.keySet().iterator();
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/default.css">
<style>
a {
	text-decoration: none;
}

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
		<td>비밀번호</td>
		<td>수정 삭제</td>
	</tr>
	<%-- <%
		while (iterator.hasNext()) {
			Member member = (Member) tmp.get(iterator.next());
			/*Member =  Member [userid=a, userpw=a, username=a] */
	%> --%>
	<%
		Class.forName("oracle.jdbc.driver.OracleDriver");

		//데탑용
		//String url = "jdbc:oracle:thin:@localhost:1522:orcl";

		//노트북용
		//String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		//String user = "SCOTT";
		//String password = "tiger";
		
		//커넥션 풀 사용
		String jdbcDriver = "jdbc:apache:commons:dbcp:open";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			//conn = DriverManager.getConnection(url, user, password);
			conn = DriverManager.getConnection(jdbcDriver);
			String sql = "select * from Webmember";
			stmt = conn.createStatement();

			rs = stmt.executeQuery(sql);
			while (rs.next()) {
	%>
	<tr>
		<td><%=rs.getString("mid")%></td>
		<td><%=rs.getString("mname")%></td>
		<td><%=rs.getString("mpw")%></td>
		<td><a href="modifi.jsp?id=<%=rs.getString("mid")%>">수정 </a> <a
			href="del.jsp?id=<%=rs.getString("mid")%>">삭제</a></td>
	</tr>
	<%
		}
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException se) {
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException se) {
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException se) {
				}
			}

		}
	%>
	<%-- <tr>
		<td><%=member.getUserid()%></td>
		<td><%=member.getUsername()%></td>
		<td><%=member.getUserpw()%></td>
		<td><a href="modifi.jsp?id=<%=member.getUserid()%>">수정 </a> <a
			href="del.jsp?id=<%=member.getUserid()%>">삭제</a></td>
	</tr>
	<%
		}
	%> --%>
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