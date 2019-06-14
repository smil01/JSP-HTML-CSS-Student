<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<fmt:requestEncoding value="UTF-8"/>
<title>Insert title here</title>
</head>
<body>
	<%
		String[] name = {"오대근", "오대길", "오대팔"};
		request.setAttribute("name", name);
	%>
	<c:forEach var="i" items="${name}">
		${i}
	</c:forEach>
</body>
</html>