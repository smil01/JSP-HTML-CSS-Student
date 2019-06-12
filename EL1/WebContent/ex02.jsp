<%@page import="com.Member"%>
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
		application.setAttribute("num", 40);
		session.setAttribute("num", 30);
		request.setAttribute("num", 20);
		pageContext.setAttribute("num", 10);
		
		Member m = new Member("박병곤", 22);
		application.setAttribute("member", m);
	%>

	${num}
	${pageScope.num}<br>
	${requestScope.num}<br>
	${sessionScope.num}<br>
	${applicationScope.num}<br>
	
	${member}<br>
	${member.name}<br>
	${member.age}<br>
	
	${param.num}<br>
</body>
</html>