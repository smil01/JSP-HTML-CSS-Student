<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
	String arr[] = (String[])request.getAttribute("login");
%>
</head>
<body>
<%=arr[0] %><br>
<%=arr[1] %>
</body>
</html>