<%@page import="com.method.Cal"%>
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
	Cal cal = new Cal();
%>

<h1><%=cal.sum(2, 3)%></h1>
</body>
</html>

