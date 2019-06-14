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
	<c:set var="num" value="10" scope="page"/>
	
	<c:choose>
		<c:when test="${pageScope.num > 30}">
			30보다 큽니다.
		</c:when>
		<c:when test="${pageScope.num > 20}">
			20보다 큽니다.
		</c:when>
		<c:when test="${pageScope.num > 10}">
			10보다 큽니다.
		</c:when>
		<c:otherwise>
			10보다 작거나 같습니다.
		</c:otherwise>
	</c:choose>

</body>
</html>