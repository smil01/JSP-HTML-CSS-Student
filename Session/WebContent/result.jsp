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
	String id = (String)session.getAttribute("id");
%>
<%=id%>님 환영합니다.<br>
${sessionScope.id}님 환영합니다.<br>
<a href="logout.jsp">로그아웃</a>
</body>
</html>