<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="Header.jsp"%>

<h2>회원가입</h2>
<hr>
<form action="memberRegForm.jsp" method="post">
	<table>
		<tr>
			<td>아이디(이메일)</td>
			<td><input type="text" name="userid"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="userpw"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="username"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="회원가입"></td>
		</tr>
	</table>
</form>
