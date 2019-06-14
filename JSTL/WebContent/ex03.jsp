<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<fmt:requestEncoding value="UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<c:set var="num" value="10" scope="page" />
	
	<c:if test="${num > 10}">
		10보다 큽니다.
	</c:if>
	<c:if test="${num <= 10}">
		10보다 작습니다.
	</c:if>
	
</body>
</html>