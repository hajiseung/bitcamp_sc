<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.TreeMap"%>
<%@page import="Member_info.Member"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%-- <jsp:useBean id="tmp" class="java.util.TreeMap" scope="application" />
<%
	String id = (String) session.getAttribute("idd");
	String name = request.getParameter("modiName");
	String pw = request.getParameter("modiPw");
	tmp.replace(id, new Member(id, pw, name));
	session.removeAttribute("idd");
	response.sendRedirect("memberList.jsp");
%> --%>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");

	//데탑용
	//String url = "jdbc:oracle:thin:@localhost:1522:orcl";

	//노트북용
	//String url = "jdbc:oracle:thin:@localhost:1521:orcl";

	//String user = "SCOTT";
	//String password = "tiger";
	String jdbcDriver = "jdbc:apache:commons:dbcp:open";
	Connection conn = null;
	PreparedStatement pstmt = null;

	try {
		//conn = DriverManager.getConnection(url, user, password);
		conn = DriverManager.getConnection(jdbcDriver);
		String sql = "update webmember set mname=? , mpw=?";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("modiName"));
		pstmt.setString(2, request.getParameter("modiPw"));

		pstmt.executeUpdate();
	} finally {
		if (pstmt != null) {
			try {
				pstmt.close();
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

<!-- 수정할 키를 찾고 그 키의 값들을 바꿔 준다. -->
<!-- ex) b를 선택하면 그곳의 값에 접근하여 set메서드로 다시 설정한다. -->