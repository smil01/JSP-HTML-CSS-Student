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
	Cookie[] cookies =  request.getCookies();

	for(int i = 0; i<cookies.length; i++){
		System.out.println("쿠키 이름 : " + cookies[i].getName());
		System.out.println("쿠키 내용 : " + cookies[i].getValue());
		System.out.println(cookies[i]);
		System.out.println("========================================");
	}
%>
${cookie.myCookie.value}
</body>
</html>