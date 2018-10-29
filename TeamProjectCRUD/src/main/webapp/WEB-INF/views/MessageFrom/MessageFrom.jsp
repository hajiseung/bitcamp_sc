<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>보낼 메세지 입력</h1>
	<form method="post">
		메세지 보내는 사람 : <input type="text" name="sendId" /><br>
		메세지 받는 사람 : <input type="text" name="recvId" /><br>
		메세지 내용 : <textarea name="messageCont" cols="30" rows="10"></textarea>
		<input type="submit" value="보내기" />
	</form>
</body>
</html>