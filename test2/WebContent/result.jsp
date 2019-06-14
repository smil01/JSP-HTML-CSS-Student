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
	<h1>선호도 조사 결과</h1>
	<hr>
	<table border="1">
		<tr>
			<td>이름</td>
			<td>${param.name}</td>
		</tr>
		<tr>
			<td>좋아하는 과일</td>
			<td>
				${paramValues.like[0]} ${paramValues.like[1]} ${paramValues.like[2]}
			</td>
		</tr>
	</table>
</body>
</html>