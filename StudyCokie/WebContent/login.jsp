<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();

		for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals("id")) {
				out.println(cookies[i].getValue() + "님 환영합니다.");
			}
		}
	%>
	
	<a href="logout.jsp">로그아웃</a>
</body>
</html>