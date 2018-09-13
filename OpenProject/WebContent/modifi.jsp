<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.TreeMap"%>
<jsp:useBean id="tmp" class="java.util.TreeMap" scope="application" />

<h1>수정할 페이지</h1>
<form action="modifi2.jsp" method="post">
	<%
		String str = request.getParameter("id");
		session.setAttribute("idd", str);
	%>
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" disabled="disabled" name="modiId"
				value="<%=str%>" /></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="modiName" /></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="modiPw" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="수정" /></td>
		</tr>
	</table>
</form>
<!-- 수정할 키를 찾고 그 키의 값들을 바꿔 준다. -->
<!-- ex) b를 선택하면 그곳의 값에 접근하여 set메서드로 다시 설정한다. -->