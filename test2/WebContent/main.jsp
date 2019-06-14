<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>빅데이터 과정 회원시스템</h1>
	<hr>
	<form action="Logout" method="post">
		<table border="1">
			<tr>
				<td>${requestScope.id}님 환영합니다.</td>
			</tr>
			<tr>
				<td align="center"><input type="submit" value="로그아웃"></td>
			</tr>
		</table>
	</form>
</body>
</html>