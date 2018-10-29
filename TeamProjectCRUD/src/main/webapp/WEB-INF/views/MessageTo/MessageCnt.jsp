<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${messageInfo.recvId }의 확인 안 한 메세지 개수: ${messageInfo.count }개 입니다.</h1>
	<a href="${pageContext.request.contextPath}/MessageTo/MessageTo?recvId=${messageInfo.recvId }">메세지 확인</a>
</body>
</html>