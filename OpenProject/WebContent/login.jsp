
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="Header.jsp"%>
<%@page import="java.util.TreeMap"%>
<%@page import="Member_info.Member"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%-- 
<jsp:useBean id="tmp" class="java.util.TreeMap" scope="application" />
<%
	String id = request.getParameter("userID");
	String pw = request.getParameter("userPW");
	//넘겨 받은 id 와 pw 를 확인해서 값이 맞으면 로그인 되게 해준다
	/* Member tmp = (Member) application.getAttribute(id); */

	if (tmp.containsKey(id)) {
		Member mem = (Member) tmp.get(id);

		/* if (id != null && pw != null && tmp.getUserid().equals(id) && tmp.getUserpw().equals(pw)) {
			request.getSession(false).setAttribute("userID", tmp.getUserid());
			request.getSession(false).setAttribute("userNAME", tmp.getUsername()); */

		if (id != null && pw != null && mem.getUserid().equals(id) && mem.getUserpw().equals(pw)) {
			request.getSession(false).setAttribute("userID", mem.getUserid());
			request.getSession(false).setAttribute("userNAME", mem.getUsername());
			response.sendRedirect("myPage.jsp");
		}
	}
%> --%>
<%
	String id = request.getParameter("userID");
	String pw = request.getParameter("userPW");
	String idchk = "";
	String pwchk = "";
	String mname = "";

	Class.forName("oracle.jdbc.driver.OracleDriver");

	String url = "jdbc:oracle:thin:@localhost:1522:orcl";
	String user = "SCOTT";
	String password = "tiger";
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	try {
		conn = DriverManager.getConnection(url, user, password);

		String sql = "select * from Webmember where mid='" + id + "'";
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);
		if (rs.next()) {
			idchk = rs.getString("mid");
			pwchk = rs.getString("mpw");
			mname = rs.getString("mname");
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
	if (idchk != null && id.equals(idchk) && pw.equals(pwchk)) {
		request.getSession(false).setAttribute("userID", idchk);
		request.getSession(false).setAttribute("userNAME", mname);
		response.sendRedirect("myPage.jsp");
	}
%>
<div id="contents">
	<h2>로그인</h2>
	<hr>
	<h1>아이디 또는 비밀번호가 틀립니다.</h1>
	<h1>
		<a href="loginForm.jsp">다시 로그인 하기.</a>
	</h1>
</div>