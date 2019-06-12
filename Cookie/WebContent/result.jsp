<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();

	for(Cookie c : cookies){
		if(c.getName().equals("id")){
			out.print("<h1>"+ c.getValue() +"님 환영합니다.</h1>");
		}
	}
%>
<h1>${cookie.id.value}님 환영합니다.</h1>
<a href="logout.jsp">로그아웃</a>
</body>
</html>