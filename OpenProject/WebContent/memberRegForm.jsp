<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.TreeMap"%>
<%@page import="java.util.Enumeration"%>
<%@page import="Member_info.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="Header.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%-- <jsp:useBean id="Member" class="Member_info.Member" scope="request" />
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
%> --%>
<%
	String mid = request.getParameter("userid");
	String mname = request.getParameter("username");
	String mpw = request.getParameter("userpw");

	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1522:orcl";
	String user = "SCOTT";
	String password = "tiger";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int resultCnt = 0;
	try {
		conn = DriverManager.getConnection(url, user, password);
		String sql = "Insert into WEBMember values(?,?,?)";

		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, mid);
		pstmt.setString(2, mname);
		pstmt.setString(3, mpw);

		resultCnt = pstmt.executeUpdate();
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

	if (resultCnt > 0) {
%>
<h2>회원가입</h2>
<hr>

<table>
	<tr>
		<td>아이디(이메일)</td>
		<td><%=mid%></td>
		<%-- <td><%=Member.getUserid()%></td> --%>
		<%-- <td>${Member.userid }</td> --%>
		<%-- <td>${tmp.userid }</td> --%>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><%=mpw%></td>
		<%-- <td><%=userPW%></td> --%>
		<%-- <td>${Member.userpw }</td> --%>
		<%-- <td>${tmp.userpw }</td> --%>
	</tr>
	<tr>
		<td>이름</td>
		<td><%=mname%></td>
		<%-- <td><%=userNAME%></td> --%>
		<%-- <td>${Member.username }</td> --%>
		<%-- <td>${tmp.username }</td> --%>
	</tr>
</table>
<%
	} else {
%>
<h1>
	잘못된 정보입니다. <a href="memberReg.jsp">회원가입창으로 이동</a>
</h1>
<%
	}
%>