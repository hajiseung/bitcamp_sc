<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <jsp:useBean id="tmp" class="java.util.TreeMap" scope="application" /> --%>
<%-- <%
	String str = request.getParameter("id");
	response.sendRedirect("memberList.jsp");
%>
 --%>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");

	String url = "jdbc:oracle:thin:@localhost:1522:orcl";
	String user = "SCOTT";
	String password = "tiger";
	Connection conn = null;
	Statement stmt = null;

	try {
		conn = DriverManager.getConnection(url, user, password);
		String sql = "delete from webmember where mid = '" + request.getParameter("id") + "'";

		stmt = conn.createStatement();
		stmt.executeUpdate(sql);
	} finally {
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
	response.sendRedirect("memberList.jsp");
%>