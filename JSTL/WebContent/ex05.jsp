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
	<c:forEach var="i" begin="1" end="10" step="1" >
		${i} 안녕 <br>
	</c:forEach>
</body>
</html>